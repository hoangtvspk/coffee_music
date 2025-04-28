import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.freezed.dart';
part 'search_result.g.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    required List<Track> tracks,
    @Default([]) List<Album> albums,
    @Default([]) List<Artist> artists,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}

@freezed
class Track with _$Track {
  const factory Track({
    required String id,
    required String name,
    // required List<Artist> artists,
    required Album album,
    required String previewUrl,
    required int durationMs,
  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}

@freezed
class Album with _$Album {
  const factory Album({
    required String id,
    required String name,
    required List<Artist> artists,
    required List<Image> images,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@freezed
class Artist with _$Artist {
  const factory Artist({
    required String id,
    required String name,
    required List<Image> images,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    required String url,
    required int height,
    required int width,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
