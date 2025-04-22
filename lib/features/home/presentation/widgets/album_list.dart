import 'package:flutter/material.dart';
import '../../domain/entities/album/album.dart';
import '../../../../core/widgets/image/cached_image.dart';

class AlbumList extends StatelessWidget {
  final List<Album> albums;
  final String title;
  final void Function(String albumId) onAlbumSelected;

  const AlbumList({
    super.key,
    required this.albums,
    required this.title,
    required this.onAlbumSelected,
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
            itemCount: albums.length,
            itemBuilder: (context, index) {
              final album = albums[index];
              return GestureDetector(
                onTap: () {
                  onAlbumSelected(album.id);
                },
                child: Container(
                  width: 160,
                  margin: const EdgeInsets.only(right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CachedImage(
                        imageUrl: album.images.first.url,
                        height: 160,
                        width: 160,
                        borderRadius: BorderRadius.circular(8),
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        album.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
