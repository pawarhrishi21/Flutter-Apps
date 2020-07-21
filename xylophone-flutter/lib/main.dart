import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void ring(int a) {
    final player = AudioCache();
    player.play('note$a.wav');
  }

  Expanded buildkey(Color color, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          ring(soundNumber);
        },
        child: null,
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(Colors.purpleAccent, 1),
              buildkey(Colors.indigo, 2),
              buildkey(Colors.blue, 3),
              buildkey(Colors.green, 4),
              buildkey(Colors.yellow, 5),
              buildkey(Colors.orange, 6),
              buildkey(Colors.red, 7),
            ],
          ),
        ),
      ),
    );
  }
}
