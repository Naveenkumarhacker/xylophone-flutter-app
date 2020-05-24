import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  player(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  pannelMusic({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            pannelMusic(color: Colors.red, number: 1),
            pannelMusic(color: Colors.orange, number: 2),
            pannelMusic(color: Colors.yellow, number: 3),
            pannelMusic(color: Colors.green, number: 4),
            pannelMusic(color: Colors.teal, number: 5),
            pannelMusic(color: Colors.blue, number: 6),
            pannelMusic(color: Colors.purple, number: 7),
          ],
        ),
      ),
    );
  }
}
