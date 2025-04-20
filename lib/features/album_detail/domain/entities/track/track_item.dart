import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/entities/spotify_image/spotify_image.dart';

part 'track_item.freezed.dart';
part 'track_item.g.dart';

@freezed
class TrackItem with _$TrackItem {
  const factory TrackItem({
    required String id,
    required String name,
    required List<String> artists,
    required int durationMs,
    required int trackNumber,
    required List<SpotifyImage> images,
  }) = _TrackItem;

  factory TrackItem.fromJson(Map<String, dynamic> json) =>
      _$TrackItemFromJson(json);
}
