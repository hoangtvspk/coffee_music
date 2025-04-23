import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/entities/spotify_image/spotify_image.dart';
import '../../../../../features/home/domain/entities/playlist/playlist.dart';
import '../owner/owner_model.dart';

part 'playlist_model.freezed.dart';
part 'playlist_model.g.dart';

@freezed
class PlaylistModel with _$PlaylistModel {
  const PlaylistModel._(); // needed for custom getters

  const factory PlaylistModel({
    required String id,
    required String name,
    required String description,
    @Default([]) List<SpotifyImage> images,
    required OwnerModel owner,
    required Map<String, dynamic> tracks,
    required String type,
  }) = _PlaylistModel;

  factory PlaylistModel.fromJson(Map<String, dynamic> json) =>
      _$PlaylistModelFromJson(json);
}

extension PlaylistModelX on PlaylistModel {
  Playlist toEntity() {
    return Playlist(
      id: id,
      name: name,
      description: description,
      images: images,
      owner: owner.displayName,
      totalTracks: tracks['total'] as int? ?? 0,
      type: type,
      releaseDate: '',
      artists: [],
    );
  }
}
