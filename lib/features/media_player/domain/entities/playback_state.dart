import 'package:freezed_annotation/freezed_annotation.dart';

part 'playback_state.freezed.dart';
part 'playback_state.g.dart';

@freezed
class PlaybackState with _$PlaybackState {
  const factory PlaybackState({
    Device? device,
    @JsonKey(name: 'repeat_state') String? repeatState,
    @JsonKey(name: 'shuffle_state') bool? shuffleState,
    Context? context,
    int? timestamp,
    @JsonKey(name: 'progress_ms') int? progressMs,
    @JsonKey(name: 'is_playing') bool? isPlaying,
    Track? item,
    @JsonKey(name: 'currently_playing_type') String? currentlyPlayingType,
    PlayerActions? actions,
  }) = _PlaybackState;

  factory PlaybackState.fromJson(Map<String, dynamic> json) =>
      _$PlaybackStateFromJson(json);
}

@freezed
class Device with _$Device {
  const factory Device({
    String? id,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'is_private_session') bool? isPrivateSession,
    @JsonKey(name: 'is_restricted') bool? isRestricted,
    String? name,
    String? type,
    @JsonKey(name: 'volume_percent') int? volumePercent,
    @JsonKey(name: 'supports_volume') bool? supportsVolume,
  }) = _Device;

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}

@freezed
class Context with _$Context {
  const factory Context({
    required String type,
    required String href,
    required ExternalUrls externalUrls,
    required String uri,
  }) = _Context;

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);
}

@freezed
class ExternalUrls with _$ExternalUrls {
  const factory ExternalUrls({
    required String spotify,
  }) = _ExternalUrls;

  factory ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsFromJson(json);
}

@freezed
class Track with _$Track {
  const factory Track({
    required Album album,
    required List<Artist> artists,
    @JsonKey(name: 'available_markets') required List<String> availableMarkets,
    @JsonKey(name: 'disc_number') required int discNumber,
    @JsonKey(name: 'duration_ms') required int durationMs,
    required bool explicit,
    @JsonKey(name: 'external_ids') required ExternalIds externalIds,
    @JsonKey(name: 'external_urls') required ExternalUrls externalUrls,
    required String href,
    required String id,
    required String name,
    required int popularity,
    @JsonKey(name: 'preview_url') String? previewUrl,
    @JsonKey(name: 'track_number') required int trackNumber,
    required String type,
    required String uri,
    @JsonKey(name: 'is_local') required bool isLocal,
  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}

@freezed
class Album with _$Album {
  const factory Album({
    @JsonKey(name: 'album_type') required String albumType,
    @JsonKey(name: 'total_tracks') required int totalTracks,
    @JsonKey(name: 'available_markets') required List<String> availableMarkets,
    @JsonKey(name: 'external_urls') required ExternalUrls externalUrls,
    required String href,
    required String id,
    required List<Image> images,
    required String name,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'release_date_precision')
    required String releaseDatePrecision,
    required String type,
    required String uri,
    required List<Artist> artists,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@freezed
class Artist with _$Artist {
  const factory Artist({
    @JsonKey(name: 'external_urls') required ExternalUrls externalUrls,
    required String href,
    required String id,
    required String name,
    required String type,
    required String uri,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    required String url,
    required int? height,
    required int? width,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class ExternalIds with _$ExternalIds {
  const factory ExternalIds({
    String? isrc,
    String? ean,
    String? upc,
  }) = _ExternalIds;

  factory ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsFromJson(json);
}

@freezed
class PlayerActions with _$PlayerActions {
  const factory PlayerActions({
    bool? interruptingPlayback,
    bool? pausing,
    bool? resuming,
    bool? seeking,
    bool? skippingNext,
    bool? skippingPrev,
    bool? togglingRepeatContext,
    bool? togglingShuffle,
    bool? togglingRepeatTrack,
    bool? transferringPlayback,
  }) = _PlayerActions;

  factory PlayerActions.fromJson(Map<String, dynamic> json) =>
      _$PlayerActionsFromJson(json);
}
