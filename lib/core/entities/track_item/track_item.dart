import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../spotify_image/spotify_image.dart';

part 'track_item.freezed.dart';
part 'track_item.g.dart';

abstract class ITrackItem {
  String get id;
  String get name;
  List<SpotifyImage> get images;
  String get uri;
  String get type;
}

@freezed
class TrackItem with _$TrackItem implements ITrackItem {
  const factory TrackItem({
    required String id,
    required String name,
    required List<SpotifyImage> images,
    required String uri,
    required String type,
  }) = _TrackItem;

  factory TrackItem.fromJson(Map<String, dynamic> json) =>
      _$TrackItemFromJson(json);
}
