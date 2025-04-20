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
  String _formatDuration(int milliseconds) {
    final duration = Duration(milliseconds: milliseconds);
    final minutes = duration.inMinutes;
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  void initState() {
    super.initState();
    context.read<AlbumTracksBloc>().add(AlbumTracksEvent.fetchAlbumInfo(
          widget.albumId,
        ));
    context.read<AlbumTracksBloc>().add(AlbumTracksEvent.fetchAlbumTracks(
          albumId: widget.albumId,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlbumTracksBloc, AlbumTracksState>(
      builder: (context, state) {
        return state.maybeWhen(
            initial: () => const SizedBox(),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            orElse: () => const SizedBox(),
            error: (message) => const SizedBox(),
            loaded: (tracks, album) => Scaffold(
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
                                ? Image.network(
                                    album.images.first.url,
                                    height: 300,
                                    width: 300,
                                    fit: BoxFit.cover,
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
                                'Release Date: ${album.releaseDate}',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Total Tracks: ${album.totalTracks}',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 24),
                              const Text(
                                'Tracks',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: tracks.length,
                                itemBuilder: (context, index) {
                                  final track = tracks[index];
                                  return ListTile(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 0),
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
                                      constraints:
                                          const BoxConstraints(maxWidth: 60),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            child: album.images.isNotEmpty
                                                ? Image.network(
                                                    album.images.first.url,
                                                    width: 40,
                                                    height: 40,
                                                    fit: BoxFit.cover,
                                                  )
                                                : const SizedBox(),
                                          ),
                                        ],
                                      ),
                                    ),
                                    trailing: Text(
                                      _formatDuration(track.durationMs),
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
                ));
      },
    );
  }
}
