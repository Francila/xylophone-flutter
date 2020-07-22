import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded tecla({Color c, int note}) {
    return Expanded(
      child: FlatButton(
          color: c,
          onPressed: () {
            playSound(note);
          }),
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
              tecla(c: Colors.red, note: 1),
              tecla(c: Colors.orange, note: 2),
              tecla(c: Colors.yellow, note: 3),
              tecla(c: Colors.green, note: 4),
              tecla(c: Colors.teal, note: 5),
              tecla(c: Colors.blue, note: 6),
              tecla(c: Colors.purple, note: 7),
            ],
          ),
        ),
      ),
    );
  }
}

/* */
