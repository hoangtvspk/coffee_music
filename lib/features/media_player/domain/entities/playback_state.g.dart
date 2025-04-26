// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playback_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaybackStateImpl _$$PlaybackStateImplFromJson(Map<String, dynamic> json) =>
    _$PlaybackStateImpl(
      device: json['device'] == null
          ? null
          : Device.fromJson(json['device'] as Map<String, dynamic>),
      repeatState: json['repeat_state'] as String?,
      shuffleState: json['shuffle_state'] as bool?,
      context: json['context'] == null
          ? null
          : Context.fromJson(json['context'] as Map<String, dynamic>),
      timestamp: (json['timestamp'] as num?)?.toInt(),
      progressMs: (json['progress_ms'] as num?)?.toInt(),
      isPlaying: json['is_playing'] as bool?,
      item: json['item'] == null
          ? null
          : Track.fromJson(json['item'] as Map<String, dynamic>),
      currentlyPlayingType: json['currently_playing_type'] as String?,
      actions: json['actions'] == null
          ? null
          : PlayerActions.fromJson(json['actions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaybackStateImplToJson(_$PlaybackStateImpl instance) =>
    <String, dynamic>{
      'device': instance.device,
      'repeat_state': instance.repeatState,
      'shuffle_state': instance.shuffleState,
      'context': instance.context,
      'timestamp': instance.timestamp,
      'progress_ms': instance.progressMs,
      'is_playing': instance.isPlaying,
      'item': instance.item,
      'currently_playing_type': instance.currentlyPlayingType,
      'actions': instance.actions,
    };

_$DeviceImpl _$$DeviceImplFromJson(Map<String, dynamic> json) => _$DeviceImpl(
      id: json['id'] as String?,
      isActive: json['is_active'] as bool?,
      isPrivateSession: json['is_private_session'] as bool?,
      isRestricted: json['is_restricted'] as bool?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      volumePercent: (json['volume_percent'] as num?)?.toInt(),
      supportsVolume: json['supports_volume'] as bool?,
    );

Map<String, dynamic> _$$DeviceImplToJson(_$DeviceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.isActive,
      'is_private_session': instance.isPrivateSession,
      'is_restricted': instance.isRestricted,
      'name': instance.name,
      'type': instance.type,
      'volume_percent': instance.volumePercent,
      'supports_volume': instance.supportsVolume,
    };

_$ContextImpl _$$ContextImplFromJson(Map<String, dynamic> json) =>
    _$ContextImpl(
      type: json['type'] as String,
      href: json['href'] as String,
      externalUrls:
          ExternalUrls.fromJson(json['externalUrls'] as Map<String, dynamic>),
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$$ContextImplToJson(_$ContextImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'href': instance.href,
      'externalUrls': instance.externalUrls,
      'uri': instance.uri,
    };

_$ExternalUrlsImpl _$$ExternalUrlsImplFromJson(Map<String, dynamic> json) =>
    _$ExternalUrlsImpl(
      spotify: json['spotify'] as String,
    );

Map<String, dynamic> _$$ExternalUrlsImplToJson(_$ExternalUrlsImpl instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$TrackImpl _$$TrackImplFromJson(Map<String, dynamic> json) => _$TrackImpl(
      album: Album.fromJson(json['album'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableMarkets: (json['available_markets'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      discNumber: (json['disc_number'] as num).toInt(),
      durationMs: (json['duration_ms'] as num).toInt(),
      explicit: json['explicit'] as bool,
      externalIds:
          ExternalIds.fromJson(json['external_ids'] as Map<String, dynamic>),
      externalUrls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      popularity: (json['popularity'] as num).toInt(),
      previewUrl: json['preview_url'] as String?,
      trackNumber: (json['track_number'] as num).toInt(),
      type: json['type'] as String,
      uri: json['uri'] as String,
      isLocal: json['is_local'] as bool,
    );

Map<String, dynamic> _$$TrackImplToJson(_$TrackImpl instance) =>
    <String, dynamic>{
      'album': instance.album,
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_ids': instance.externalIds,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'popularity': instance.popularity,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
      'is_local': instance.isLocal,
    };

_$AlbumImpl _$$AlbumImplFromJson(Map<String, dynamic> json) => _$AlbumImpl(
      albumType: json['album_type'] as String,
      totalTracks: (json['total_tracks'] as num).toInt(),
      availableMarkets: (json['available_markets'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      externalUrls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      releaseDate: json['release_date'] as String,
      releaseDatePrecision: json['release_date_precision'] as String,
      type: json['type'] as String,
      uri: json['uri'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlbumImplToJson(_$AlbumImpl instance) =>
    <String, dynamic>{
      'album_type': instance.albumType,
      'total_tracks': instance.totalTracks,
      'available_markets': instance.availableMarkets,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision': instance.releaseDatePrecision,
      'type': instance.type,
      'uri': instance.uri,
      'artists': instance.artists,
    };

_$ArtistImpl _$$ArtistImplFromJson(Map<String, dynamic> json) => _$ArtistImpl(
      externalUrls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$$ArtistImplToJson(_$ArtistImpl instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      url: json['url'] as String,
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

_$ExternalIdsImpl _$$ExternalIdsImplFromJson(Map<String, dynamic> json) =>
    _$ExternalIdsImpl(
      isrc: json['isrc'] as String?,
      ean: json['ean'] as String?,
      upc: json['upc'] as String?,
    );

Map<String, dynamic> _$$ExternalIdsImplToJson(_$ExternalIdsImpl instance) =>
    <String, dynamic>{
      'isrc': instance.isrc,
      'ean': instance.ean,
      'upc': instance.upc,
    };

_$PlayerActionsImpl _$$PlayerActionsImplFromJson(Map<String, dynamic> json) =>
    _$PlayerActionsImpl(
      interruptingPlayback: json['interruptingPlayback'] as bool?,
      pausing: json['pausing'] as bool?,
      resuming: json['resuming'] as bool?,
      seeking: json['seeking'] as bool?,
      skippingNext: json['skippingNext'] as bool?,
      skippingPrev: json['skippingPrev'] as bool?,
      togglingRepeatContext: json['togglingRepeatContext'] as bool?,
      togglingShuffle: json['togglingShuffle'] as bool?,
      togglingRepeatTrack: json['togglingRepeatTrack'] as bool?,
      transferringPlayback: json['transferringPlayback'] as bool?,
    );

Map<String, dynamic> _$$PlayerActionsImplToJson(_$PlayerActionsImpl instance) =>
    <String, dynamic>{
      'interruptingPlayback': instance.interruptingPlayback,
      'pausing': instance.pausing,
      'resuming': instance.resuming,
      'seeking': instance.seeking,
      'skippingNext': instance.skippingNext,
      'skippingPrev': instance.skippingPrev,
      'togglingRepeatContext': instance.togglingRepeatContext,
      'togglingShuffle': instance.togglingShuffle,
      'togglingRepeatTrack': instance.togglingRepeatTrack,
      'transferringPlayback': instance.transferringPlayback,
    };
