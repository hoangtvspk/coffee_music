import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/config/app_color.dart';
import '../../data/datasources/search_remote_data_source.dart';
import '../../data/repositories/search_repository_impl.dart';
import '../bloc/search_bloc.dart';
import '../widgets/search_results.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  late final SearchBloc _searchBloc;

  @override
  void initState() {
    super.initState();
    final dataSource = SearchRemoteDataSource();
    final repository = SearchRepositoryImpl(dataSource);
    _searchBloc = SearchBloc(repository);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _searchBloc,
      child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF1C1C1E), Color(0xFF000000)],
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _searchController,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Search for songs, artists, or albums',
                              hintStyle: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.grey[400],
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey[400],
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: AppColor.grayLight,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 16,
                              ),
                            ),
                            onChanged: (value) {
                              _searchBloc.add(SearchEvent.queryChanged(value));
                            },
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColor.primary,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.mic,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              // TODO: Implement voice search
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: SearchResults(),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
