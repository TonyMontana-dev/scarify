import 'package:flutter/material.dart';
import 'package:scarify/components/neu_box.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Song Page"),
      ),
      body: Center(
        child: NeuBox(
          child: Icon(
            Icons.search
            size: 100,
            ),
          ),
        ),
    );
  }
}