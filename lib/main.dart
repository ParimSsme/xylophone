import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              child: const Text('Click Me'),
              onPressed: (){
                final player = AudioCache();
                player.play('note1.wav');
              },
            ),
          ),
        ),
      ),
    );
  }
}
