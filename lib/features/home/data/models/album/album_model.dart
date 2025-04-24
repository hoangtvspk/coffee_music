import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/domain/entities/source_image/source_image.dart';
import '../../../../../core/domain/entities/album/album.dart';
import '../../../../../core/domain/entities/artist/artist.dart';

part 'album_model.freezed.dart';
part 'album_model.g.dart';

@freezed
class AlbumModel with _$AlbumModel {
  const AlbumModel._(); // cần cho custom getter

  const factory AlbumModel({
    required String id,
    required String name,
    required List<SourceImage> images,
    required String type,
    required String albumType,
    required String releaseDate,
    required int totalTracks,
    required List<Artist> artists,
  }) = _AlbumModel;

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
  List<Artist> get artists => throw UnimplementedError();

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
