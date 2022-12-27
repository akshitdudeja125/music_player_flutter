import 'package:flutter/material.dart';
import 'package:music_player/models/playlist_model.dart';
import 'package:music_player/widgets/bottom_navbar.dart';

class PlaylistScreen extends StatelessWidget {
  final Playlist playlist;

  const PlaylistScreen({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: bgBoxDecoration(),
      child: Scaffold(
        // bottomNavigationBar: const NavBar(),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Playlist'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                PlaylistBox(playlist: playlist),
                const SizedBox(height: 30),
                PlaylistSongs(playlist: playlist),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration bgBoxDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.grey.shade900.withOpacity(0.7),
          Colors.grey.shade500.withOpacity(0.7),
        ],
      ),
    );
  }
}

class PlaylistSongs extends StatelessWidget {
  final Playlist playlist;
  const PlaylistSongs({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: playlist.songs.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(
            playlist.songs[index].album,
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
          title: Text(
            playlist.songs[index].title,
            style: const TextStyle(
              color: Colors.white54,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text('${playlist.songs[index].artist} ⚬ 02:45'),
          trailing: const Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        );
      },
    );
  }
}

class PlaylistBox extends StatelessWidget {
  const PlaylistBox({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade700.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              playlist.imageUrl,
              height: MediaQuery.of(context).size.height * 0.28,
              width: MediaQuery.of(context).size.height * 0.28,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Text(
          playlist.title,
          style: TextStyle(
            color: Colors.grey.shade300,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
