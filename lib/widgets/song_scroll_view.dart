import 'package:flutter/material.dart';
import 'package:music_player/models/song_model.dart';
import 'package:music_player/widgets/song_card.dart';

class SongScrollView extends StatelessWidget {
  const SongScrollView({
    Key? key,
    required this.songs,
  }) : super(key: key);

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.43,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return SongCard(
            songs: songs,
            index: index,
          );
        },
      ),
    );
  }
}
