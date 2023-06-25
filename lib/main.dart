import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  XylophoneApp({super.key});

  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple,
  ];

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note${soundNumber + 1}.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              for (var i = 0; i < colors.length; i++)
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: colors[i]),
                    child: const Text(''),
                    onPressed: (){
                      playSound(i);
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
