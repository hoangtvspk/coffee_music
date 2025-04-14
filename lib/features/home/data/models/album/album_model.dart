import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/entities/spotify_image.dart';
import '../../../domain/entities/album/album.dart';
import '../artist/artist_model.dart';

part 'album_model.freezed.dart';
part 'album_model.g.dart';

@freezed
class AlbumModel with _$AlbumModel {
  const factory AlbumModel({
    required String id,
    required String name,
    required List<SpotifyImage> images,
    required String type,
    @JsonKey(name: 'album_type') required String albumType,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'total_tracks') required int totalTracks,
    @JsonKey(name: 'artists') required List<ArtistModel> artists,
  }) = _AlbumModel;

  factory AlbumModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumModelFromJson(json);
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
