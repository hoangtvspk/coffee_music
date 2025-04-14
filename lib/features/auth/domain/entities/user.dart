import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
      {required String id,
      required String name,
      required String email,
      required List<SpotifyImage> images,
      required String country,
      required String product}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class SpotifyImage with _$SpotifyImage {
  const factory SpotifyImage({
    required String url,
    int? height,
    int? width,
  }) = _SpotifyImage;

  factory SpotifyImage.fromJson(Map<String, dynamic> json) =>
      _$SpotifyImageFromJson(json);
}
