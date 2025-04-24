import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist.freezed.dart';
part 'artist.g.dart';

@freezed
class Artist with _$Artist {
  const Artist._(); // cần cho custom getter

  const factory Artist(
      {required String id,
      required String name,
      required String type,
      required Map<String, String> externalUrls}) = _Artist;

  @override
  @JsonKey(name: 'external_urls')
  Map<String, String> get externalUrls => throw UnimplementedError();

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}
