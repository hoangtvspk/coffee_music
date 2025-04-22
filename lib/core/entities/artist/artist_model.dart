import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_model.freezed.dart';
part 'artist_model.g.dart';

@freezed
class ArtistModel with _$ArtistModel {
  const ArtistModel._(); // cần cho custom getter

  const factory ArtistModel(
      {required String id,
      required String name,
      required String type,
      required Map<String, String> externalUrls}) = _ArtistModel;

  @override
  @JsonKey(name: 'external_urls')
  Map<String, String> get externalUrls => throw UnimplementedError();

  factory ArtistModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistModelFromJson(json);
}
