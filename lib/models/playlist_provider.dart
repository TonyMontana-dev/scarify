import 'package:flutter/material.dart';
import 'package:scarify/models/song.dart';


class PlaylistProvider extends ChangeNotifier {
  // playlist of songs
  final List<Song> _playlist = [
    // song 1
    Song(
      songName: "Goutte deau",
      artistName: "Ninho",
      albumArtImagePath: "assets/images/ninho_destin_albumCover.jpeg",
      audioPath: "audio/Ninho-Goutte-deau.mp3"
    ),

    // song 2
    Song(
      songName: "Jeune Lossa",
      artistName: "Ninho",
      albumArtImagePath: "assets/images/ninho_destin_albumCover.jpeg",
      audioPath: "audio/Ninho-Jeune-Lossa.mp3"
    ),

    // continue adding songs - Note naturally this is not scalable at large numbers, this is only sperimental
  ];

  // current song playing index
  int? _currentSongIndex;

  // Getters
  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  // Setters
  set currentSongIndex(int? newIndex) {
    // update current song index
    _currentSongIndex = newIndex;

    // update UI
    notifyListeners();
  }
}