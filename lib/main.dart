import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main()  => runApp(XylophoneApp());

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

  Expanded createKey({required Color color, required int soundNumber}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        child: const Text(''),
        onPressed: (){
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (var i = 0; i < colors.length; i++)
                createKey(color: colors[i], soundNumber: i+1),
            ],
          ),
        ),
      ),
    );
  }
}
