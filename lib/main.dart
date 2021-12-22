import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        child: Text(
          '$soundNumber',
        ),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.blue, soundNumber: 2),
              buildKey(color: Colors.green, soundNumber: 3),
              buildKey(color: Colors.purple, soundNumber: 4),
              buildKey(color: Colors.pink, soundNumber: 5),
              buildKey(color: Colors.orange, soundNumber: 6),
              buildKey(color: Colors.brown, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
