import 'package:buitify_coffee/core/domain/entities/status/status.dart';
import 'package:buitify_coffee/core/widgets/image/cached_image.dart';
import 'package:buitify_coffee/core/domain/entities/tracks_list/tracks_list.dart';
import 'package:buitify_coffee/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../bloc/track_list/tracks_list_bloc.dart';

class AlbumDetailScreen<T extends TracksList> extends StatefulWidget {
  final String id;
  final T listInfo;
  const AlbumDetailScreen({
    super.key,
    required this.id,
    required this.listInfo,
  });

  @override
  State<AlbumDetailScreen> createState() => _AlbumDetailScreenState<T>();
}

class _AlbumDetailScreenState<T extends TracksList>
    extends State<AlbumDetailScreen<T>> {
  String _formatDuration(int milliseconds, BuildContext context) {
    final duration = Duration(milliseconds: milliseconds);
    final minutes = duration.inMinutes;
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  void initState() {
    super.initState();
    context.read<TracksListBloc>().start(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TracksListBloc, TracksListState>(
      builder: (context, state) {
        // Show loading if either tracks or album info is loading
        if (state.statusLoadTracks == const Status.loading()) {
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
                        context.read<TracksListBloc>().start(widget.id),
                    icon: const Icon(Icons.refresh),
                    label: const Text('Retry'),
                  ),
                ],
              ),
            ),
          );
        }

        // Show content if we have the album

        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              widget.listInfo.name,
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
                    child: widget.listInfo.images.isNotEmpty
                        ? CachedImage(
                            imageUrl: widget.listInfo.images.first.url,
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
                        widget.listInfo.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      if (widget.listInfo.releaseDate != '')
                        Text(
                          '${context.l10n.releaseDate}: ${widget.listInfo.releaseDate}',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      if (widget.listInfo.releaseDate != '')
                        const SizedBox(height: 8),
                      Text(
                        '${context.l10n.totalTracks}: ${widget.listInfo.totalTracks}',
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
                                    child: track.album?.images.isNotEmpty ??
                                            false
                                        ? CachedImage(
                                            imageUrl: track.images.first.url,
                                            width: 40,
                                            height: 40,
                                          )
                                        : widget.listInfo.images.isNotEmpty
                                            ? CachedImage(
                                                imageUrl: widget
                                                    .listInfo.images.first.url,
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
                              print(
                                  'Playing track: ${track.name} with ID: ${track.id}');
                              context.push('/player', extra: {
                                'url': track.id,
                                'title': track.name,
                                'artist': track.artists.join(', '),
                                'imageUrl':
                                    track.album?.images.isNotEmpty ?? false
                                        ? track.images.first.url
                                        : widget.listInfo.images.isNotEmpty
                                            ? widget.listInfo.images.first.url
                                            : '',
                              });
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
