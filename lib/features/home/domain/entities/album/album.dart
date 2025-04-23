import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/entities/spotify_image/spotify_image.dart';
import '../../../../../core/entities/tracks_list/tracks_list.dart';

part 'album.freezed.dart';
part 'album.g.dart';

@freezed
class Album with _$Album implements TracksList {
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
