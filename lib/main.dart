import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNumber: 1, keyColor: Colors.red),
              buildKey(soundNumber: 2, keyColor: Colors.orange),
              buildKey(soundNumber: 3, keyColor: Colors.yellow),
              buildKey(soundNumber: 4, keyColor: Colors.green),
              buildKey(soundNumber: 5, keyColor: Colors.teal),
              buildKey(soundNumber: 6, keyColor: Colors.blue),
              buildKey(soundNumber: 7, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildKey({int soundNumber, Color keyColor}) => Expanded(
        child: FlatButton(
          onPressed: () {
            playSound(soundNumber);
          },
          color: keyColor,
        ),
      );

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}
