import 'package:buitify_coffee/features/home/data/models/album/album_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:buitify_coffee/core/entities/spotify_image/spotify_image.dart';

import '../../../domain/entities/track/track_item.dart';

part 'track_item_model.freezed.dart';
part 'track_item_model.g.dart';

@freezed
class TrackItemModel with _$TrackItemModel {
  const TrackItemModel._(); // cần constructor ẩn để dùng getter
  const factory TrackItemModel({
    required String id,
    required String name,
    // remove JsonKey here
    required List<String> artists,
    required int durationMs,
    required int trackNumber,
    @Default([]) List<SpotifyImage> images,
    AlbumModel? album,
  }) = _TrackItemModel;

  factory TrackItemModel.fromJson(Map<String, dynamic> json) =>
      _$TrackItemModelFromJson(json);

  // custom getter cho artists
  @override
  @JsonKey(fromJson: _artistsFromJson)
  List<String> get artists => throw UnimplementedError();

  @override
  @JsonKey(name: 'duration_ms')
  int get durationMs => throw UnimplementedError();

  @override
  @JsonKey(name: 'track_number')
  int get trackNumber => throw UnimplementedError();

  TrackItem toEntity({required List<SpotifyImage> albumImages}) {
    return TrackItem(
      id: id,
      name: name,
      artists: artists,
      durationMs: durationMs,
      trackNumber: trackNumber,
      images: albumImages,
      album: album?.toEntity(),
    );
  }
}

List<String> _artistsFromJson(List<dynamic> artists) {
  return artists.map((artist) => artist['name'] as String).toList();
}
