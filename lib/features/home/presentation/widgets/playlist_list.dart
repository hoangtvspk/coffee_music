import 'package:buitify_coffee/core/widgets/image/cached_image.dart';
import 'package:flutter/material.dart';
import '../../domain/entities/playlist/playlist.dart';

class PlaylistList extends StatelessWidget {
  final String title;
  final void Function(String playlistId) onPlaylistSelected;
  final List<Playlist> playlists;

  const PlaylistList({
    super.key,
    required this.playlists,
    required this.title,
    required this.onPlaylistSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: playlists.length,
            itemBuilder: (context, index) {
              final playlist = playlists[index];
              return Container(
                  width: 160,
                  margin: const EdgeInsets.only(right: 16),
                  child: GestureDetector(
                    onTap: () => onPlaylistSelected(playlist.id),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: CachedImage(
                              imageUrl: playlist.images.isNotEmpty
                                  ? playlist.images.first.url
                                  : '',
                              height: 160,
                              width: 160,
                              fit: BoxFit.cover,
                              borderRadius: BorderRadius.circular(8),
                            )),
                        const SizedBox(height: 8),
                        Text(
                          playlist.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ));
            },
          ),
        ),
      ],
    );
  }
}
