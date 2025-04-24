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
    @Default(null) String? previewUrl,
    required int durationMs,
  }) = _TrackModel;

  @override
  @JsonKey(name: 'preview_url')
  String? get previewUrl => throw UnimplementedError();

  @override
  @JsonKey(name: 'duration_ms')
  int get durationMs => throw UnimplementedError();

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
