import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/config/app_color.dart';
import '../../../home/presentation/screens/home_screen.dart';
import '../../../search/presentation/screens/search_screen.dart';
import '../../../library/presentation/screens/library_screen.dart';
import '../../../settings/presentation/screens/settings_screen.dart';
import '../bloc/main_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final GoRouter _router;
  late final VoidCallback _listener;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const LibraryScreen(),
    const SettingsScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _router = GoRouter.of(context);

    // Add route change listener
    _listener = () {
      final uri = _router.routerDelegate.currentConfiguration.uri;
      final queryParams = uri.queryParameters;
      final tab = queryParams['tab'];

      context.read<MainBloc>().add(MainDeepLinkReceived(tab: tab));
    };
    _router.routerDelegate.addListener(_listener);

    // Initial deep link handling
    final uri = _router.routerDelegate.currentConfiguration.uri;
    final queryParams = uri.queryParameters;
    final tab = queryParams['tab'];
    context.read<MainBloc>().add(MainDeepLinkReceived(tab: tab));
  }

  @override
  void dispose() {
    _router.routerDelegate.removeListener(_listener);
    super.dispose();
  }

  void _onItemTapped(int index) {
    context.read<MainBloc>().add(MainTabChanged(index: index));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: _screens[state.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: AppColor.primary,
            unselectedItemColor: Colors.grey,
            currentIndex: state.selectedIndex,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.music_albums),
                label: 'Library',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}
