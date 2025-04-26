import 'package:buitify_coffee/core/config/env_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart' as audio;
import 'package:buitify_coffee/features/media_player/presentation/bloc/player_bloc.dart';
import 'package:spotify_sdk/spotify_sdk.dart';
import 'dart:async';

class PlayerScreen extends StatefulWidget {
  final Map<String, String> trackDetails;

  const PlayerScreen({
    super.key,
    required this.trackDetails,
  });

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  final audio.AudioPlayer _audioPlayer = audio.AudioPlayer();
  bool _isPlaying = false;
  Timer? _positionTimer;
  int _currentPosition = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _positionTimer?.cancel();
    super.dispose();
  }

  void _startPositionTimer() {
    _positionTimer?.cancel();
    _positionTimer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (_isPlaying) {
        setState(() {
          _currentPosition += 100;
        });
      }
    });
  }

  void _stopPositionTimer() {
    _positionTimer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF1C1C1E), Color(0xFF000000)],
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  // Album Art
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: widget.trackDetails['imageUrl']?.isNotEmpty == true
                          ? Image.network(
                              widget.trackDetails['imageUrl']!,
                              fit: BoxFit.cover,
                            )
                          : const Icon(Icons.music_note, size: 100),
                    ),
                  ),
                  // Track Info
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.trackDetails['title'] ?? 'No track playing',
                            style: Theme.of(context).textTheme.headlineSmall,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            widget.trackDetails['artist'] ?? 'Unknown artist',
                            style: Theme.of(context).textTheme.bodyLarge,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Progress Bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        BlocBuilder<PlayerBloc, PlayerState>(
                          builder: (context, state) {
                            final duration =
                                state.playbackState?.item?.durationMs ?? 0;

                            return Column(
                              children: [
                                Slider(
                                  value: _currentPosition.toDouble(),
                                  max: duration.toDouble() == 0
                                      ? 1.0
                                      : duration.toDouble(),
                                  onChanged: (value) {
                                    setState(() {
                                      _currentPosition = value.toInt();
                                    });
                                    context.read<PlayerBloc>().add(
                                          PlayerEvent.seek(value.toInt()),
                                        );
                                  },
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      _formatDuration(_currentPosition),
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                    Text(
                                      _formatDuration(duration),
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  // Controls
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.shuffle),
                            onPressed: () {
                              context.read<PlayerBloc>().add(
                                    PlayerEvent.toggleShuffle(
                                      !(state.playbackState?.shuffleState ??
                                          false),
                                    ),
                                  );
                            },
                            color: state.playbackState?.shuffleState == true
                                ? Theme.of(context).primaryColor
                                : null,
                          ),
                          IconButton(
                            icon: const Icon(Icons.skip_previous),
                            onPressed: () {
                              context
                                  .read<PlayerBloc>()
                                  .add(const PlayerEvent.previous());
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              _isPlaying
                                  ? Icons.pause_circle_filled
                                  : Icons.play_circle_filled,
                              size: 64,
                            ),
                            onPressed: () async {
                              final track = state.playbackState?.item;
                              if (track == null) {
                                print('No track available to play');
                                return;
                              }

                              final uri = track.uri;
                              if (uri == null || uri.isEmpty) {
                                print('No URI available for this track');
                                return;
                              }

                              try {
                                if (_isPlaying) {
                                  await SpotifySdk.pause();
                                  _stopPositionTimer();
                                } else {
                                  print('Playing track URI: $uri');

                                  await SpotifySdk.play(
                                    spotifyUri: uri,
                                  );

                                  _startPositionTimer();
                                }
                                setState(() {
                                  _isPlaying = !_isPlaying;
                                });
                              } catch (e) {
                                print('Error playing audio: $e');
                              }
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.skip_next),
                            onPressed: () {
                              context
                                  .read<PlayerBloc>()
                                  .add(const PlayerEvent.next());
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.repeat),
                            onPressed: () {
                              final currentRepeatState =
                                  state.playbackState?.repeatState;
                              final nextRepeatState = currentRepeatState == null
                                  ? 'context'
                                  : currentRepeatState == 'context'
                                      ? 'track'
                                      : 'off';
                              context.read<PlayerBloc>().add(
                                    PlayerEvent.setRepeatMode(
                                      nextRepeatState,
                                    ),
                                  );
                            },
                            color: state.playbackState?.repeatState != null
                                ? Theme.of(context).primaryColor
                                : null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  String _formatDuration(int milliseconds) {
    final duration = Duration(milliseconds: milliseconds);
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }
}
