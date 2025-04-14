import 'package:freezed_annotation/freezed_annotation.dart';

part 'spotify_image.freezed.dart';
part 'spotify_image.g.dart';

@freezed
class SpotifyImage with _$SpotifyImage {
  const factory SpotifyImage({
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'height') required int height,
    @JsonKey(name: 'width') required int width,
  }) = _SpotifyImage;

  factory SpotifyImage.fromJson(Map<String, dynamic> json) =>
      _$SpotifyImageFromJson(json);
}
