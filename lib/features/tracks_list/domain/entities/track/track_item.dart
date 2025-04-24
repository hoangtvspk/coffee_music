import 'package:buitify_coffee/core/domain/entities/album/album.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/domain/entities/source_image/source_image.dart';

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
    required List<SourceImage> images,
    Album? album,
  }) = _TrackItem;

  factory TrackItem.fromJson(Map<String, dynamic> json) =>
      _$TrackItemFromJson(json);
}
