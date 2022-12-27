import 'package:flutter/material.dart';
import 'package:music_player/models/playlist_model.dart';
import 'package:music_player/models/song_model.dart';
import 'package:music_player/screens/playlist_screen.dart';

class SongCard extends StatelessWidget {
  final List<Song> songs;
  final int index;

  const SongCard({super.key, required this.songs, required this.index});

  @override
  Widget build(BuildContext context) {
    double dims = MediaQuery.of(context).size.width * 0.37;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlaylistScreen(
                playlist: Playlist(
                  title: songs[index].title,
                  imageUrl: songs[index].album,
                  songs: songs,
                ),
              ),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: dims,
              height: dims,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(songs[index].album),
                  // fit: BoxFit.cover,
                ),
              ),
            ),
            // Container(
            //   alignment: Alignment.center,
            //   height: 50,
            //   width: dims * 0.8,
            //   margin: const EdgeInsets.only(bottom: 10),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20.0),
            //     color: Colors.white.withOpacity(0.8),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             songs[index].title,
            //             style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            //                   color: Colors.grey.shade800,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //           ),
            //           Text(
            //             songs[index].artist,
            //             style: Theme.of(context).textTheme.bodySmall!.copyWith(
            //                   color: Colors.grey.shade700,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //           ),
            //         ],
            //       ),
            //       IconButton(
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.play_arrow,
            //           color: Colors.grey.shade800,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
