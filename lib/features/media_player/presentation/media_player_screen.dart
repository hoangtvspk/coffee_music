import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bloc/media_player_bloc.dart';
import '../domain/entities/media_player_event.dart';
import '../domain/entities/media_player_state.dart';

class MediaPlayerScreen extends StatelessWidget {
  const MediaPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MediaPlayerBloc(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF1C1C1E), Color(0xFF000000)],
            ),
          ),
          child: SafeArea(
            child: BlocBuilder<MediaPlayerBloc, MediaPlayerState>(
              builder: (context, state) {
                return Column(
                  children: [
                    // App Bar
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () => context.pop(),
                          ),
                          const Spacer(),
                          Text(
                            'Now Playing',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.more_vert),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),

                    // Album Art
                    Expanded(
                      child: Center(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            margin: const EdgeInsets.all(32),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.2),
                                  blurRadius: 20,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: state.currentTrackImageUrl.isNotEmpty
                                    ? Image.network(
                                        state.currentTrackImageUrl,
                                        fit: BoxFit.cover,
                                      )
                                    : Image.network(
                                        'https://i1.sndcdn.com/artworks-v65qlbv7kb8I-0-t500x500.jpg',
                                        fit: BoxFit.cover,
                                      )),
                          ),
                        ),
                      ),
                    ),

                    // Track Info
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Column(
                        children: [
                          Text(
                            state.currentTrackTitle,
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            state.currentTrackArtist,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),

                    // Progress Bar
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32.0,
                        vertical: 16.0,
                      ),
                      child: Column(
                        children: [
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.brown[800],
                              inactiveTrackColor: Colors.brown[200],
                              thumbColor: Colors.brown[800],
                              overlayColor: Colors.brown.withOpacity(0.1),
                              trackHeight: 4.0,
                            ),
                            child: Slider(
                              value: state.currentPosition.inSeconds.toDouble(),
                              min: 0,
                              max: state.totalDuration.inSeconds.toDouble(),
                              onChanged: (value) {
                                context.read<MediaPlayerBloc>().add(
                                      MediaPlayerEvent.seek(
                                          Duration(seconds: value.toInt())),
                                    );
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  _formatDuration(state.currentPosition),
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.grey[700],
                                  ),
                                ),
                                Text(
                                  _formatDuration(state.totalDuration),
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Controls
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32.0,
                        vertical: 16.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.shuffle,
                              color: state.isShuffleModeEnabled
                                  ? Colors.brown[800]
                                  : Colors.grey[600],
                            ),
                            onPressed: () {
                              context.read<MediaPlayerBloc>().add(
                                    const MediaPlayerEvent.toggleShuffle(),
                                  );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.skip_previous),
                            iconSize: 36,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              state.isPlaying ? Icons.pause : Icons.play_arrow,
                              size: 48,
                            ),
                            onPressed: () {
                              if (state.isPlaying) {
                                context.read<MediaPlayerBloc>().add(
                                      const MediaPlayerEvent.pause(),
                                    );
                              } else {
                                context.read<MediaPlayerBloc>().add(
                                      const MediaPlayerEvent.play(),
                                    );
                              }
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.skip_next),
                            iconSize: 36,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              _getLoopIcon(state.loopMode),
                              color: state.loopMode > 0
                                  ? Colors.brown[800]
                                  : Colors.grey[600],
                            ),
                            onPressed: () {
                              context.read<MediaPlayerBloc>().add(
                                    const MediaPlayerEvent.toggleLoop(),
                                  );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  IconData _getLoopIcon(int loopMode) {
    switch (loopMode) {
      case 1:
        return Icons.repeat_one;
      case 2:
        return Icons.repeat;
      default:
        return Icons.repeat;
    }
  }
}
