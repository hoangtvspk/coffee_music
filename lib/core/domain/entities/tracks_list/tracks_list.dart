import '../source_image/source_image.dart';

abstract class TracksList {
  String get id;
  String get name;
  List<SourceImage> get images;
  String get type;
  String get releaseDate;
  int get totalTracks;
  List<String> get artists;
}
