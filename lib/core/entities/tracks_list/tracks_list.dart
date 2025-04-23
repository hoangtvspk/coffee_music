import 'package:buitify_coffee/features/home/domain/entities/album/album.dart';

import '../spotify_image/spotify_image.dart';

abstract class TracksList {
  String get id;
  String get name;
  List<SpotifyImage> get images;
  String get type;
  String get releaseDate;
  int get totalTracks;
  List<String> get artists;
}
