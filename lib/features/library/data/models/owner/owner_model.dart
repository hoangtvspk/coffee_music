import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_model.freezed.dart';
part 'owner_model.g.dart';

@freezed
class OwnerModel with _$OwnerModel {
  const OwnerModel._(); // cần cho custom getter

  const factory OwnerModel({
    required String id,
    required String displayName,
    required String type,
    required Map<String, String> externalUrls,
  }) = _OwnerModel;

  @override
  @JsonKey(name: 'display_name')
  String get displayName => throw UnimplementedError();

  @override
  @JsonKey(name: 'external_urls')
  Map<String, String> get externalUrls => throw UnimplementedError();

  factory OwnerModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerModelFromJson(json);
}
