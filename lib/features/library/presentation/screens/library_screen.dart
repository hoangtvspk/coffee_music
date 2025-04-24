import 'package:buitify_coffee/core/widgets/image/cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/config/app_color.dart';
import '../bloc/playlist_bloc.dart';
import '../../../../core/domain/entities/playlist/playlist.dart';
import '../../domain/usecases/get_user_playlists.dart';
import '../../data/repositories/home_repository_impl.dart';
import '../../data/datasources/home_remote_data_source.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, authState) {
        final userId = authState.maybeWhen(
          success: (user) => user.id,
          orElse: () => '',
        );

        return BlocProvider(
          create: (context) => PlaylistBloc(
            getUserPlaylists: GetUserPlaylists(
              HomeRepositoryImpl(
                HomeRemoteDataSourceImpl(),
              ),
            ),
          )..add(PlaylistEvent.getUserPlaylists(userId: userId)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF1C1C1E), Color(0xFF000000)],
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 16,
                        children: [
                          BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              return state.maybeWhen(
                                success: (user) => ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: CachedImage(
                                    imageUrl: user.images.first.url,
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                orElse: () => const SizedBox.shrink(),
                              );
                            },
                          ),
                          Text(
                            'Your Library',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: BlocBuilder<PlaylistBloc, PlaylistState>(
                          builder: (context, state) {
                            return state.statusLoadPlaylists.when(
                              idle: () => _buildEmptyState(),
                              loading: () => _buildLoadingState(),
                              failure: (error) => _buildErrorState(error),
                              success: () =>
                                  _buildPlaylistGrid(state.userPlaylists),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.library_music,
            size: 64,
            color: Colors.grey[600],
          ),
          const SizedBox(height: 16),
          Text(
            'Your library is empty',
            style: GoogleFonts.poppins(
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 16),
          Text(
            'Loading your library...',
            style: GoogleFonts.poppins(
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64,
            color: Colors.red[400],
          ),
          const SizedBox(height: 16),
          Text(
            'Error: $error',
            style: GoogleFonts.poppins(
              color: Colors.grey[600],
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildPlaylistGrid(List<Playlist> playlists) {
    if (playlists.isEmpty) {
      return _buildEmptyState();
    }

    return ListView.builder(
      padding: const EdgeInsets.only(top: 8),
      itemCount: playlists.length,
      itemBuilder: (context, index) {
        final playlist = playlists[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: InkWell(
              onTap: () {
                context.push('/playlist/${playlist.id}', extra: playlist);
              },
              borderRadius: BorderRadius.circular(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: playlist.images.isNotEmpty
                        ? Image.network(
                            playlist.images.first.url,
                            height: 200, // Increased height
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                height: 200,
                                color: Colors.grey[300],
                                child: Icon(
                                  Icons.music_note,
                                  size: 64,
                                  color: Colors.grey[600],
                                ),
                              );
                            },
                          )
                        : Container(
                            height: 200,
                            color: Colors.grey[300],
                            child: Icon(
                              Icons.music_note,
                              size: 64,
                              color: Colors.grey[600],
                            ),
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          playlist.name,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${playlist.totalTracks} tracks',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.grey[400],
                          ),
                        ),
                        if (playlist.description.isNotEmpty) ...[
                          const SizedBox(height: 8),
                          Text(
                            playlist.description,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.grey[400],
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
