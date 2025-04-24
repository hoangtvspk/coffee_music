import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import '../../../../core/domain/entities/status/status.dart';
import '../../domain/entities/media_player_event.dart';
import '../../domain/entities/media_player_state.dart';

class MediaPlayerBloc extends Bloc<MediaPlayerEvent, MediaPlayerState> {
  MediaPlayerBloc() : super(MediaPlayerState(player: AudioPlayer())) {
    on<LoadTrack>(_onLoadTrack);
    on<Play>(_onPlay);
    on<Pause>(_onPause);
    on<Seek>(_onSeek);
    on<ToggleShuffle>(_onToggleShuffle);
    on<ToggleLoop>(_onToggleLoop);
    on<Stop>(_onStop);

    // Listen to player position changes
    state.player.positionStream.listen((position) {
      add(Seek(position));
    });
  }

  Future<void> _onLoadTrack(
      LoadTrack event, Emitter<MediaPlayerState> emit) async {
    try {
      emit(state.copyWith(statusLoadTrack: const Status.loading()));

      await state.player.setUrl(event.trackUrl);

      emit(state.copyWith(
        currentTrackTitle: event.title,
        currentTrackArtist: event.artist,
        currentTrackImageUrl: event.imageUrl,
        totalDuration: state.player.duration ?? Duration.zero,
        statusLoadTrack: const Status.success(),
      ));
    } catch (e) {
      emit(state.copyWith(
        statusLoadTrack: Status.failure(e.toString()),
      ));
    }
  }

  Future<void> _onPlay(Play event, Emitter<MediaPlayerState> emit) async {
    try {
      await state.player.play();
      emit(state.copyWith(isPlaying: true));
    } catch (e) {
      emit(state.copyWith(
        statusPlayback: Status.failure(e.toString()),
      ));
    }
  }

  Future<void> _onPause(Pause event, Emitter<MediaPlayerState> emit) async {
    try {
      await state.player.pause();
      emit(state.copyWith(isPlaying: false));
    } catch (e) {
      emit(state.copyWith(
        statusPlayback: Status.failure(e.toString()),
      ));
    }
  }

  Future<void> _onSeek(Seek event, Emitter<MediaPlayerState> emit) async {
    try {
      await state.player.seek(event.position);
      emit(state.copyWith(currentPosition: event.position));
    } catch (e) {
      emit(state.copyWith(
        statusPlayback: Status.failure(e.toString()),
      ));
    }
  }

  Future<void> _onToggleShuffle(
      ToggleShuffle event, Emitter<MediaPlayerState> emit) async {
    try {
      final newShuffleMode = !state.isShuffleModeEnabled;
      await state.player.setShuffleModeEnabled(newShuffleMode);
      emit(state.copyWith(isShuffleModeEnabled: newShuffleMode));
    } catch (e) {
      emit(state.copyWith(
        statusPlayback: Status.failure(e.toString()),
      ));
    }
  }

  Future<void> _onToggleLoop(
      ToggleLoop event, Emitter<MediaPlayerState> emit) async {
    try {
      final newLoopMode = (state.loopMode + 1) % 3;
      await state.player.setLoopMode(LoopMode.values[newLoopMode]);
      emit(state.copyWith(loopMode: newLoopMode));
    } catch (e) {
      emit(state.copyWith(
        statusPlayback: Status.failure(e.toString()),
      ));
    }
  }

  Future<void> _onStop(Stop event, Emitter<MediaPlayerState> emit) async {
    try {
      await state.player.stop();
      emit(state.copyWith(
        isPlaying: false,
        currentPosition: Duration.zero,
      ));
    } catch (e) {
      emit(state.copyWith(
        statusPlayback: Status.failure(e.toString()),
      ));
    }
  }

  @override
  Future<void> close() {
    state.player.dispose();
    return super.close();
  }
}
