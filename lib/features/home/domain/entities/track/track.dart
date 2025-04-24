import 'package:buitify_coffee/core/domain/entities/album/album.dart';
import 'package:buitify_coffee/core/domain/entities/artist/artist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'track.freezed.dart';
part 'track.g.dart';

@freezed
class Track with _$Track {
  const factory Track({
    required String id,
    required String name,
    required List<Artist> artists,
    required Album album,
    String? previewUrl,
    required int durationMs,
  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}
