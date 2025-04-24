import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/entities/media_player_event.dart';
import 'bloc/media_player_bloc.dart';
import 'media_player_screen.dart';

class TestMediaPlayerScreen extends StatelessWidget {
  const TestMediaPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Media Player'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MediaPlayerScreen(),
                  ),
                );
              },
              child: const Text('Open Media Player'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (context) => MediaPlayerBloc()
                        ..add(
                          const MediaPlayerEvent.loadTrack(
                            trackUrl:
                                'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
                            title: 'Test Song',
                            artist: 'Test Artist',
                            imageUrl: 'https://picsum.photos/500/500',
                          ),
                        ),
                      child: const MediaPlayerScreen(),
                    ),
                  ),
                );
              },
              child: const Text('Open Media Player with Test Song'),
            ),
          ],
        ),
      ),
    );
  }
}
