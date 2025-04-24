import 'package:buitify_coffee/core/domain/entities/tracks_list/tracks_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/domain/entities/source_image/source_image.dart';

part 'playlist.freezed.dart';
part 'playlist.g.dart';

@freezed
class Playlist with _$Playlist implements TracksList {
  const factory Playlist({
    required String id,
    required String name,
    required String description,
    @Default([]) List<SourceImage> images,
    required String owner,
    required int totalTracks,
    required String type,
    required String releaseDate,
    required List<String> artists,
  }) = _Playlist;

  factory Playlist.fromJson(Map<String, dynamic> json) =>
      _$PlaylistFromJson(json);
}
