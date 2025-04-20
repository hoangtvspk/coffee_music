import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'spotify_image.freezed.dart';
part 'spotify_image.g.dart';

@freezed
class SpotifyImage with _$SpotifyImage {
  const factory SpotifyImage({
    required String url,
    required int height,
    required int width,
  }) = _SpotifyImage;

  factory SpotifyImage.fromJson(Map<String, dynamic> json) =>
      _$SpotifyImageFromJson(json);
}
