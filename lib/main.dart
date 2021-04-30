import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = new AudioCache();
    player.play("note$soundNumber.wav");
  }

  Widget buildKey({int number, Color clr}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(number);
        },
        color: clr,
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
              buildKey(number: 1, clr: Colors.blue),
              buildKey(number: 2, clr: Colors.red),
              buildKey(number: 3, clr: Colors.green),
              buildKey(number: 4, clr: Colors.amber),
              buildKey(number: 5, clr: Colors.black),
              buildKey(number: 6, clr: Colors.teal),
              buildKey(number: 7, clr: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
