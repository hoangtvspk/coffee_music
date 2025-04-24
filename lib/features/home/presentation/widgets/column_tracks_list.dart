import 'package:buitify_coffee/features/home/domain/entities/track/track.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ColumnTracksList extends StatelessWidget {
  const ColumnTracksList({
    super.key,
    required this.tracks,
    required this.title,
  });

  final List<Track> tracks;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(height: 16),
        ...tracks.map(
          (track) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: GestureDetector(
              onTap: () {
                // Navigate to media player with track data
                context.push('/player', extra: {
                  'url': track.previewUrl ?? '',
                  'title': track.name,
                  'artist': track.artists.map((e) => e.name).join(', '),
                  'imageUrl': track.album.images.first.url,
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      track.album.images.first.url,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        track.name,
                        style: Theme.of(context).textTheme.titleMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        track.artists.map((e) => e.name).join(', '),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey[600],
                            ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
