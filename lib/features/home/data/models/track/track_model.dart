import 'package:buitify_coffee/core/domain/entities/artist/artist.dart';
import 'package:buitify_coffee/features/home/data/models/album/album_model.dart';
import 'package:buitify_coffee/features/home/domain/entities/track/track.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_model.freezed.dart';
part 'track_model.g.dart';

@freezed
class TrackModel with _$TrackModel {
  const TrackModel._();

  const factory TrackModel({
    required String id,
    required String name,
    required List<Artist> artists,
    required AlbumModel album,
    @JsonKey(name: 'preview_url') @Default(null) String? previewUrl,
    @JsonKey(name: 'duration_ms') required int durationMs,
  }) = _TrackModel;

  factory TrackModel.fromJson(Map<String, dynamic> json) =>
      _$TrackModelFromJson(json);
}

extension TrackModelX on TrackModel {
  Track toEntity() {
    return Track(
      id: id,
      name: name,
      artists: artists,
      album: album.toEntity(),
      previewUrl: previewUrl,
      durationMs: durationMs,
    );
  }
}
