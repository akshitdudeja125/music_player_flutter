// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_player/colors.dart';
import 'package:music_player/models/playlist_model.dart';
import 'package:music_player/widgets/bottom_navbar.dart';
import 'package:music_player/widgets/custom_app_bar.dart';
import 'package:music_player/models/song_model.dart';
import 'package:music_player/widgets/playlist_card.dart';
import 'package:music_player/widgets/search_bar.dart';
import 'package:music_player/widgets/song_card.dart';
import 'package:music_player/widgets/song_scroll_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Song> songs = [
      Song(
        title: 'Song 1',
        artist: 'Artist 1',
        album: 'assets/images/album1.jpg',
        duration: '3:00',
        path: 'path 1',
      ),
      Song(
        title: 'Song 3',
        artist: 'Artist 3',
        album: 'assets/images/album2.jpg',
        duration: '3:00',
        path: 'path 3',
      ),
      Song(
        title: 'Song 1',
        artist: 'Artist 1',
        album: 'assets/images/album4.jpg',
        duration: '3:00',
        path: 'path 1',
      ),
      Song(
        title: 'Song 2',
        artist: 'Artist 2',
        album: 'assets/images/album5.jpg',
        duration: '3:00',
        path: 'path 2',
      ),
    ];
    return Container(
      decoration: bgBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(),
        extendBody: true,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Akshit',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                const SizedBox(height: 7),
                Text(
                  'Enjoy your favorite music',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 19,
                      ),
                ),
                const SizedBox(height: 20),
                CustomSearchBar(
                  hintText: 'What do you want to listen to?',
                ),
                const SizedBox(height: 20),
                Text(
                  'Recently Played',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                SongScrollView(songs: songs),
                const SizedBox(height: 20),
                Text(
                  'Top Songs',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                SongScrollView(songs: songs),
                const SizedBox(height: 10),
                Text(
                  'Playlists',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: playlists.length,
                  itemBuilder: (context, index) {
                    return PlaylistCard(playlist: playlists[index]);
                  },
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: NavBar(),
      ),
    );
  }
}
