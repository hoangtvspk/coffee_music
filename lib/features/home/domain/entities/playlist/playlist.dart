import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/entities/spotify_image/spotify_image.dart';

part 'playlist.freezed.dart';
part 'playlist.g.dart';

@freezed
class Playlist with _$Playlist {
  const factory Playlist({
    required String id,
    required String name,
    required String description,
    @Default([]) List<SpotifyImage> images,
    required String owner,
    required int totalTracks,
    required String type,
  }) = _Playlist;

  factory Playlist.fromJson(Map<String, dynamic> json) =>
      _$PlaylistFromJson(json);
}
