import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:buitify_coffee/core/entities/spotify_image/spotify_image.dart';

import '../../../domain/entities/track/track_item.dart';

part 'track_item_model.freezed.dart';
part 'track_item_model.g.dart';

@freezed
class TrackItemModel with _$TrackItemModel {
  const TrackItemModel._();

  const factory TrackItemModel({
    required String id,
    required String name,
    @JsonKey(fromJson: _artistsFromJson) required List<String> artists,
    @JsonKey(name: 'duration_ms') required int durationMs,
    @JsonKey(name: 'track_number') required int trackNumber,
  }) = _TrackItemModel;

  factory TrackItemModel.fromJson(Map<String, dynamic> json) =>
      _$TrackItemModelFromJson(json);

  TrackItem toEntity({required List<SpotifyImage> albumImages}) {
    return TrackItem(
      id: id,
      name: name,
      artists: artists,
      durationMs: durationMs,
      trackNumber: trackNumber,
      images: albumImages,
    );
  }
}

List<String> _artistsFromJson(List<dynamic> artists) {
  return artists.map((artist) => artist['name'] as String).toList();
}
