import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {

runApp(xylophoneApp());
}

class xylophoneApp extends StatelessWidget {
  const xylophoneApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: ()  {
                final player = AudioPlayer();
                player.setSourceAsset('Mehbooba.mp3');
              }, child: Text('Click Me'),),
          ),
        ),
      ),
    );
  }
}
