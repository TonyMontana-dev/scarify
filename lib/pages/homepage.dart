import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scarify/components/my_nav.dart';
import 'package:scarify/models/song.dart';
import 'package:scarify/pages/song_page.dart';

import '../models/playlist_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  //get the playlist provider
  late final dynamic playlistProvider;

  @override
  void initState() {
    super.initState();

    // get playlist provider
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  // go to a song
  void goToSong(int songIndex) {
    // update current song index
    playlistProvider.currentSongIndex = songIndex;

    // Navigate to song page
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => SongPage(),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: const Text("S C A R I F Y")),
      drawer: const MyDrawer(),
      body: Consumer<PlaylistProvider>(
        builder: (context, value, child) {
          // get the playlist
          final List<Song> playlist = value.playlist;


          // return list view UI
          return ListView.builder(
            itemCount: playlist.length,
            itemBuilder: (contex, index) {
              //get the indiidual song
              final Song song = playlist[index];

              // return list tile UI
              return ListTile(
                title: Text(song.songName),
                subtitle: Text(song.artistName),
                leading: Image.asset(song.albumArtImagePath),
                onTap: () => goToSong(index),
              );
            },
          );
        }
      ),
    );
  }
}