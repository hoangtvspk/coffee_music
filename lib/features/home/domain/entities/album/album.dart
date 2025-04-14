import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/entities/spotify_image.dart';

part 'album.freezed.dart';
part 'album.g.dart';

@freezed
class Album with _$Album {
  const factory Album({
    required String id,
    required String name,
    required List<SpotifyImage> images,
    required String type,
    required String albumType,
    required String releaseDate,
    required int totalTracks,
    required List<String> artists,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}
