import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:buitify_coffee/core/domain/entities/status/status.dart';
import 'package:buitify_coffee/features/media_player/domain/entities/playback_state.dart';
import 'package:buitify_coffee/features/media_player/domain/repositories/player_repository.dart';
import 'dart:async';

part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final PlayerRepository _repository;
  Timer? _pollTimer;

  PlayerBloc(this._repository) : super(const PlayerState()) {
    on<PlayerEvent>((event, emit) async {
      await event.map(
        getPlaybackState: (event) async {
          emit(state.copyWith(statusGetPlaybackState: const Status.loading()));
          try {
            print('Fetching playback state...');
            final response = await _repository.getPlaybackState();
            print('Playback state response: ${response.data}');

            if (response.data == null || response.data == '') {
              print(
                  'No active device found. Please open Spotify app and start playing.');
              throw Exception(
                  'No active device found. Please open Spotify app and start playing.');
            }

            // Debug duration and progress
            final currentItem = response.data['item'];
            if (currentItem != null) {
              print('Current track duration: ${currentItem['duration_ms']} ms');
              print('Current progress: ${response.data['progress_ms']} ms');
            } else {
              print('No current item in playback state');
            }

            // Ensure we have all required fields for PlaybackState
            if (!response.data.containsKey('device')) {
              response.data['device'] = {
                'id': '',
                'is_active': true,
                'is_private_session': false,
                'is_restricted': false,
                'name': 'Unknown',
                'type': 'Unknown',
                'volume_percent': 100,
                'supports_volume': true,
              };
            }

            if (!response.data.containsKey('actions')) {
              response.data['actions'] = {
                'interrupting_playback': false,
                'pausing': true,
                'resuming': true,
                'seeking': true,
                'skipping_next': true,
                'skipping_prev': true,
                'toggling_repeat_context': true,
                'toggling_shuffle': true,
                'toggling_repeat_track': true,
                'transferring_playback': true,
              };
            }

            final playbackState = PlaybackState.fromJson(response.data);
            print('Parsed playback state:');
            print('- Duration: ${playbackState.item?.durationMs} ms');
            print('- Progress: ${playbackState.progressMs} ms');
            print('- Is Playing: ${playbackState.isPlaying}');
            print('- Has Item: ${playbackState.item != null}');

            emit(state.copyWith(
              playbackState: playbackState,
              statusGetPlaybackState: const Status.success(),
              isPlaying: response.data['is_playing'] ?? false,
            ));
          } catch (e) {
            print('Error getting playback state: $e');
            print('Error details: ${e.toString()}');
            emit(state.copyWith(
              statusGetPlaybackState: Status.failure(e.toString()),
            ));
          }
        },
        play: (event) async {
          emit(state.copyWith(statusPlay: const Status.loading()));
          try {
            await _repository.play();
            emit(state.copyWith(
              statusPlay: const Status.success(),
              isPlaying: true,
            ));
            add(const PlayerEvent.getPlaybackState());
          } catch (e) {
            emit(state.copyWith(
              statusPlay: Status.failure(e.toString()),
            ));
          }
        },
        pause: (event) async {
          emit(state.copyWith(statusPause: const Status.loading()));
          try {
            await _repository.pause();
            emit(state.copyWith(
              statusPause: const Status.success(),
              isPlaying: false,
            ));
            add(const PlayerEvent.getPlaybackState());
          } catch (e) {
            emit(state.copyWith(
              statusPause: Status.failure(e.toString()),
            ));
          }
        },
        next: (event) async {
          emit(state.copyWith(statusNext: const Status.loading()));
          try {
            await _repository.next();
            emit(state.copyWith(
              statusNext: const Status.success(),
            ));
            add(const PlayerEvent.getPlaybackState());
          } catch (e) {
            emit(state.copyWith(
              statusNext: Status.failure(e.toString()),
            ));
          }
        },
        previous: (event) async {
          emit(state.copyWith(statusPrevious: const Status.loading()));
          try {
            await _repository.previous();
            emit(state.copyWith(
              statusPrevious: const Status.success(),
            ));
            add(const PlayerEvent.getPlaybackState());
          } catch (e) {
            emit(state.copyWith(
              statusPrevious: Status.failure(e.toString()),
            ));
          }
        },
        seek: (event) async {
          emit(state.copyWith(statusSeek: const Status.loading()));
          try {
            await _repository.seek(event.positionMs);
            emit(state.copyWith(
              statusSeek: const Status.success(),
            ));
            add(const PlayerEvent.getPlaybackState());
          } catch (e) {
            emit(state.copyWith(
              statusSeek: Status.failure(e.toString()),
            ));
          }
        },
        setVolume: (event) async {
          emit(state.copyWith(statusSetVolume: const Status.loading()));
          try {
            // Volume in Spotify API is 0-100
            await _repository.setVolume(event.volumePercent);
            emit(state.copyWith(
              statusSetVolume: const Status.success(),
            ));
            add(const PlayerEvent.getPlaybackState());
          } catch (e) {
            emit(state.copyWith(
              statusSetVolume: Status.failure(e.toString()),
            ));
          }
        },
        toggleShuffle: (event) async {
          emit(state.copyWith(statusToggleShuffle: const Status.loading()));
          try {
            await _repository.toggleShuffle(event.state);
            emit(state.copyWith(
              statusToggleShuffle: const Status.success(),
            ));
            add(const PlayerEvent.getPlaybackState());
          } catch (e) {
            emit(state.copyWith(
              statusToggleShuffle: Status.failure(e.toString()),
            ));
          }
        },
        setRepeatMode: (event) async {
          emit(state.copyWith(statusSetRepeatMode: const Status.loading()));
          try {
            await _repository.setRepeatMode(event.state);
            emit(state.copyWith(
              statusSetRepeatMode: const Status.success(),
            ));
            add(const PlayerEvent.getPlaybackState());
          } catch (e) {
            emit(state.copyWith(
              statusSetRepeatMode: Status.failure(e.toString()),
            ));
          }
        },
        playTrack: (event) async {
          emit(state.copyWith(statusPlay: const Status.loading()));
          try {
            // First get track details
            print('Fetching track details for ID: ${event.uri}');
            final trackResponse = await _repository.getTrack(event.uri);
            // print('Track API Response: ${trackResponse.data}');

            // final trackUri = trackResponse.data['uri'] as String;
            // final previewUrl = trackResponse.data['preview_url'] as String?;
            // final durationMs = trackResponse.data['duration_ms'] as int;
            // print('Track URI: $trackUri');
            // print('Preview URL: $previewUrl');
            // print('Duration: $durationMs ms');

            // print('Attempting to play track with URI: $trackUri');

            // Create initial track state with the track details we already have
            final track = Track.fromJson(trackResponse.data);
            print('Track created successfully:');
            print('- Duration: ${track.durationMs} ms');
            print('- Preview URL: ${track.previewUrl}');
            print('- URI: ${track.uri}');

            emit(state.copyWith(
              playbackState: PlaybackState(
                item: track,
                progressMs: 0,
                isPlaying: true,
              ),
              statusPlay: const Status.loading(),
              isPlaying: true,
            ));

            // Try to play the track
            // try {
            //   await _repository.playTrack(trackUri);
            //   emit(state.copyWith(
            //     statusPlay: const Status.success(),
            //   ));
            // } catch (e) {
            //   print('Error playing track: $e');
            //   // Even if playing fails, we keep the track info displayed
            //   emit(state.copyWith(
            //     statusPlay: Status.failure(e.toString()),
            //   ));
            // }

            // // Start polling playback state in background
            // _startPolling();
            // add(const PlayerEvent.getPlaybackState());
          } catch (e) {
            print('Error playing track: $e');
            print('Error details: ${e.toString()}');
            emit(state.copyWith(
              statusPlay: Status.failure(e.toString()),
            ));
          }
        },
      );
    });
  }

  void _startPolling() {
    _pollTimer?.cancel();
    _pollTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      add(const PlayerEvent.getPlaybackState());
    });
  }

  @override
  Future<void> close() {
    _pollTimer?.cancel();
    return super.close();
  }
}
