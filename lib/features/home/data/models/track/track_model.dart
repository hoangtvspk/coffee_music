import 'package:buitify_coffee/features/home/domain/entities/album/album.dart';
import 'package:buitify_coffee/features/home/domain/entities/track/track.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_model.freezed.dart';
part 'track_model.g.dart';

@freezed
class TrackModel with _$TrackModel {
  const factory TrackModel({
    @Default([]) List<Album> albums,
  }) = _TrackModel;

  factory TrackModel.fromJson(Map<String, dynamic> json) =>
      _$TrackModelFromJson(json);
}

extension TrackModelX on TrackModel {
  Track toEntity() {
    return Track(albums: albums);
  }
}
