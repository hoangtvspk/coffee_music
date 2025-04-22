import 'package:buitify_coffee/core/entities/artist/artist_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/entities/spotify_image/spotify_image.dart';
import '../../../domain/entities/album/album.dart';

part 'album_model.freezed.dart';
part 'album_model.g.dart';

@freezed
class AlbumModel with _$AlbumModel {
  const AlbumModel._(); // cần cho custom getter

  const factory AlbumModel({
    required String id,
    required String name,
    required List<SpotifyImage> images,
    required String type,
    required String albumType,
    required String releaseDate,
    required int totalTracks,
    required List<ArtistModel> artists,
  }) = _AlbumModel;

  factory AlbumModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumModelFromJson(json);

  @override
  @JsonKey(name: 'album_type')
  String get albumType => throw UnimplementedError();

  @override
  @JsonKey(name: 'release_date')
  String get releaseDate => throw UnimplementedError();

  @override
  @JsonKey(name: 'total_tracks')
  int get totalTracks => throw UnimplementedError();

  @override
  @JsonKey(name: 'artists')
  List<ArtistModel> get artists => throw UnimplementedError();
}

extension AlbumModelX on AlbumModel {
  Album toEntity() {
    return Album(
      id: id,
      name: name,
      images: images,
      type: type,
      albumType: albumType,
      releaseDate: releaseDate,
      totalTracks: totalTracks,
      artists: artists.map((artist) => artist.name).toList(),
    );
  }
}
