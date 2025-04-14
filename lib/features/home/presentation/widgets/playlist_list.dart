import 'package:flutter/material.dart';
import '../../domain/entities/playlist/playlist.dart';

class PlaylistList extends StatelessWidget {
  final List<Playlist> playlists;

  const PlaylistList({super.key, required this.playlists});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: playlist.images.isEmpty
                      ? Container(
                          height: 160,
                          width: 160,
                          color: Colors.grey[800],
                          child: const Icon(
                            Icons.music_note,
                            color: Colors.white,
                            size: 40,
                          ),
                        )
                      : Image.network(
                          playlist.images.first.url,
                          height: 160,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                ),
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
          );
        },
      ),
    );
  }
}
