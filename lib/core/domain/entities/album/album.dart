import 'package:freezed_annotation/freezed_annotation.dart';
import '../source_image/source_image.dart';
import '../tracks_list/tracks_list.dart';

part 'album.freezed.dart';
part 'album.g.dart';

@freezed
class Album with _$Album implements TracksList {
  const factory Album({
    required String id,
    required String name,
    required List<SourceImage> images,
    required String type,
    required String albumType,
    required String releaseDate,
    required int totalTracks,
    required List<String> artists,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}
