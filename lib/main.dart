import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Piano()));
  }
}

class Piano extends StatefulWidget {
  const Piano({super.key});

  @override
  State<Piano> createState() => _PianoState();
}

class _PianoState extends State<Piano> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () async =>
                (await player.play(AssetSource("note1.wav"))),
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            child: Text(""),
          ),
        ),

        Expanded(
          child: TextButton(
            onPressed: () async =>
                (await player.play(AssetSource("note2.wav"))),
            style: TextButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            child: Text(""),
          ),
        ),

        Expanded(
          child: TextButton(
            onPressed: () async =>
                (await player.play(AssetSource("note3.wav"))),
            style: TextButton.styleFrom(
              backgroundColor: Colors.yellow,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            child: Text(""),
          ),
        ),

        Expanded(
          child: TextButton(
            onPressed: () async =>
                (await player.play(AssetSource("note4.wav"))),
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            child: Text(""),
          ),
        ),

        Expanded(
          child: TextButton(
            onPressed: () async =>
                (await player.play(AssetSource("note5.wav"))),
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 15, 107, 18),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            child: Text(""),
          ),
        ),

        Expanded(
          child: TextButton(
            onPressed: () async =>
                (await player.play(AssetSource("note6.wav"))),
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            child: Text(""),
          ),
        ),

        Expanded(
          child: TextButton(
            onPressed: () async =>
                (await player.play(AssetSource("note7.wav"))),
            style: TextButton.styleFrom(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            child: Text(""),
          ),
        ),
      ],
    );
  }
}
