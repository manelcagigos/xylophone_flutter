import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp( const XylophoneApp());

// Widget generateAudioButton(String audioFileName, Color color) {
//   return NewWidget(color: color, filename: audioFileName,);
// }

class AudioButton extends StatelessWidget {
  AudioButton({
    super.key,
    required this.color,
    required this.fileNumber,
  });
  Color color;
  int fileNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 100.0,
        color: color,
        child: TextButton(
          onPressed: () async {
            final player = AudioPlayer();
            await player.play(AssetSource('note$fileNumber.wav'));
          },
          child: const Text(''),
        ),
      ),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //   child: TextButton(
            //     onPressed: () async {
            //       final player = AudioPlayer();
            //       await player.play(AssetSource('note1.wav'));
            //     },
            //     child: const Text('Click Me'),
            //   ),
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AudioButton(
                color: Colors.red,
                fileNumber: 1,
              ),
              AudioButton(
                color: Colors.orange,
                fileNumber: 2,
              ),
              AudioButton(
                color: Colors.yellow,
                fileNumber: 3,
              ),
              AudioButton(
                color: Colors.green,
                fileNumber: 4,
              ),
              AudioButton(
                color: Colors.blue.shade100,
                fileNumber: 5,
              ),
              AudioButton(
                color: Colors.blue.shade600,
                fileNumber: 6,
              ),
              AudioButton(
                color: Colors.blue.shade900,
                fileNumber: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
