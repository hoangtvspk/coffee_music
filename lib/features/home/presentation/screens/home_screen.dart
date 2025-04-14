import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:buitify_coffee/core/storage/secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:buitify_coffee/features/auth/presentation/bloc/auth_bloc.dart';
import '../../../../core/config/app_color.dart';
import '../widgets/category_card.dart';
import '../widgets/custom_filter_chip.dart';
import '../widgets/user_avatar.dart';
import '../../../../core/utils/ui_utils.dart';
import '../bloc/home_bloc.dart';
import '../widgets/album_list.dart';
import '../widgets/playlist_list.dart';
import '../../data/datasources/home_remote_data_source.dart';
import '../../data/repositories/home_repository_impl.dart';
import '../../domain/usecases/get_new_releases.dart';
import '../../domain/usecases/get_user_playlists.dart';

// - hot_hits.jpg
// - sad.jpg
// - daily.jpg
// - voice.jpg
// - hero.jpg
// - hiphop.jpg
// - rap.jpg
// - playlist_cover.jpg

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String token = '';
  late final HomeBloc _homeBloc;

  @override
  void initState() {
    super.initState();
    setToken();
    context.read<AuthBloc>().add(const AuthEvent.getUserInfo());

    // Initialize HomeBloc
    final remoteDataSource = HomeRemoteDataSourceImpl();
    final repository = HomeRepositoryImpl(remoteDataSource);
    _homeBloc = HomeBloc(
      getNewReleases: GetNewReleases(repository),
      getUserPlaylists: GetUserPlaylists(repository),
    )..add(const HomeEvent.started());
  }

  @override
  void dispose() {
    _homeBloc.close();
    super.dispose();
  }

  void setToken() async {
    final storageToken = await SecureStorage().readAccessToken();
    setState(() {
      token = storageToken ?? 'No token';
    });
  }

  Future<void> _showLogoutConfirmation() async {
    await UiUtils.showLogoutConfirmation(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _homeBloc,
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            initial: () => context.go('/'),
            success: (user) {
              print(
                  'HomeScreen: Got user info, fetching playlists for user ${user.id}');
              _homeBloc.add(HomeEvent.getUserPlaylists(
                offset: 0,
                limit: 20,
                userId: user.id,
              ));
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          backgroundColor: AppColor.brownDark,
          body: SafeArea(
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(
                    child: CircularProgressIndicator(
                      color: AppColor.primary,
                    ),
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(
                      color: AppColor.primary,
                    ),
                  ),
                  homeError: (message) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          message,
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            context
                                .read<HomeBloc>()
                                .add(const HomeEvent.started());
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
                  loaded: (newReleases, userPlaylists) {
                    print('New Releases: ${newReleases.length}');
                    print('User Playlists: ${userPlaylists.length}');

                    return CustomScrollView(
                      slivers: [
                        SliverAppBar(
                          backgroundColor: Colors.transparent,
                          floating: true,
                          title: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                const UserAvatar(),
                                const SizedBox(width: 8),
                                Row(
                                  children: [
                                    CustomFilterChip(
                                      label: 'All',
                                      isSelected: true,
                                      onTap: () {},
                                    ),
                                    const SizedBox(width: 8),
                                    CustomFilterChip(
                                      label: 'Music',
                                      isSelected: false,
                                      onTap: () {},
                                    ),
                                    const SizedBox(width: 8),
                                    CustomFilterChip(
                                      label: 'Podcasts',
                                      isSelected: false,
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            IconButton(
                              icon: const Icon(Icons.logout,
                                  color: AppColor.textSecondary),
                              onPressed: _showLogoutConfirmation,
                            ),
                          ],
                        ),
                        SliverList(
                          delegate: SliverChildListDelegate([
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Based on your recent listening',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  SizedBox(
                                    height: 200,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          width: 160,
                                          margin:
                                              const EdgeInsets.only(right: 16),
                                          decoration: BoxDecoration(
                                            color: AppColor.primary
                                                .withValues(alpha: 0.2),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 160,
                                                width: 160,
                                                decoration: BoxDecoration(
                                                  color: AppColor.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: const Center(
                                                  child: Icon(
                                                    Icons.music_note,
                                                    color: Colors.white,
                                                    size: 48,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8),
                                                child: Text(
                                                  'Your Mix ${index + 1}',
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (newReleases.isNotEmpty) ...[
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  'New Releases',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              AlbumList(albums: newReleases),
                              const SizedBox(height: 24),
                            ],
                            if (userPlaylists.isNotEmpty) ...[
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  'Your Playlists',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              PlaylistList(playlists: userPlaylists),
                            ],
                          ]),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
