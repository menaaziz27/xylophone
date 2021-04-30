import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = new AudioCache();
    player.play("note$soundNumber.wav");
  }

  Widget buildKey({int number, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(number);
        },
        color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(number: 1, color: Colors.blue),
              buildKey(number: 2, color: Colors.red),
              buildKey(number: 3, color: Colors.green),
              buildKey(number: 4, color: Colors.amber),
              buildKey(number: 5, color: Colors.black),
              buildKey(number: 6, color: Colors.teal),
              buildKey(number: 7, color: Colors.white70),
            ],
          ),
        ),
      ),
    );
  }
}
