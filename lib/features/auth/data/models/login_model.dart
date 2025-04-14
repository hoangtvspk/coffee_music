import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    required String id,
    required String name,
    required String email,
    required List<SpotifyImage> images,
    required String country,
    required String product,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}

extension LoginModelX on LoginModel {
  User toEntity() {
    return User(
      id: id,
      name: name,
      email: email,
      images: images,
      country: country,
      product: product,
    );
  }
}
