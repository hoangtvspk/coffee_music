import 'package:buitify_coffee/core/entities/entities/status.dart';
import 'package:buitify_coffee/core/widgets/image/cached_image.dart';
import 'package:buitify_coffee/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/album_track/album_tracks_bloc.dart';

class AlbumDetailScreen extends StatefulWidget {
  final String albumId;
  const AlbumDetailScreen({super.key, required this.albumId});

  @override
  State<AlbumDetailScreen> createState() => _AlbumDetailScreenState();
}

class _AlbumDetailScreenState extends State<AlbumDetailScreen> {
  String _formatDuration(int milliseconds, BuildContext context) {
    final duration = Duration(milliseconds: milliseconds);
    final minutes = duration.inMinutes;
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  void initState() {
    super.initState();
    context.read<AlbumTracksBloc>().start(widget.albumId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlbumTracksBloc, AlbumTracksState>(
      builder: (context, state) {
        // Show loading if either tracks or album info is loading
        if (state.statusLoadTracks == const Status.loading() ||
            state.statusLoadAlbumInfo == const Status.loading()) {
          return const Scaffold(
            backgroundColor: Colors.black,
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        // Show error if either tracks or album info failed
        final List<String> errors = [];
        state.statusLoadTracks.maybeWhen(
          failure: (message) => errors.add(message),
          orElse: () {},
        );
        state.statusLoadAlbumInfo.maybeWhen(
          failure: (message) => errors.add(message),
          orElse: () {},
        );

        if (errors.isNotEmpty) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 48,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    errors.join('\n'),
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  TextButton.icon(
                    onPressed: () =>
                        context.read<AlbumTracksBloc>().start(widget.albumId),
                    icon: const Icon(Icons.refresh),
                    label: const Text('Retry'),
                  ),
                ],
              ),
            ),
          );
        }

        // Show content if we have the album
        final album = state.album;
        if (album == null) {
          return const SizedBox();
        }

        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              album.name,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: album.images.isNotEmpty
                        ? CachedImage(
                            imageUrl: album.images.first.url,
                            height: 300,
                            width: 300,
                          )
                        : const SizedBox(),
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        album.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${context.l10n.releaseDate}: ${album.releaseDate}',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${context.l10n.totalTracks}: ${album.totalTracks}',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        context.l10n.tracks,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.tracks.length,
                        itemBuilder: (context, index) {
                          final track = state.tracks[index];
                          return ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 0),
                            title: Text(
                              track.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Text(
                              track.artists.join(', '),
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            leading: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 60),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: album.images.isNotEmpty
                                        ? CachedImage(
                                            imageUrl: album.images.first.url,
                                            width: 40,
                                            height: 40,
                                          )
                                        : const SizedBox(),
                                  ),
                                ],
                              ),
                            ),
                            trailing: Text(
                              _formatDuration(track.durationMs, context),
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            onTap: () {
                              // TODO: Implement track playback
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
