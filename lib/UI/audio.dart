
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ElevatedButton(
            child: Text("play "),
            onPressed: () {
              player.play('note1.wav');
            },
          ),
        ),
      ),
    );
  }
}