import 'package:flutter/material.dart';
import 'package:word_colorizer/word_colorizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Word Colorization")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: WordColorizer(
          text: "The is Kelechi Divine's project",
          highlightWordsWithColors: const {
            "Kelechi" : Colors.green,
            "project" : Colors.yellow,
          },
          onHighlightTapMap: {
            "Kelechi":() => print("This is Kelechi"),
            "project" : () => print("This is a project")
          },
        ),
      ),
    ),
    );
  }
}
