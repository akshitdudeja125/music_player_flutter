import 'package:music_player/models/song_model.dart';

final List<Song> songs = <Song>[
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

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });
}

List<Playlist> playlists = [
  Playlist(
    title: 'Hip-hop R&B Mix',
    songs: songs,
    imageUrl:
        'https://images.unsplash.com/photo-1576525865260-9f0e7cfb02b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80',
  ),
  Playlist(
    title: 'Rock & Roll',
    songs: songs,
    imageUrl:
        'https://images.unsplash.com/photo-1629276301820-0f3eedc29fd0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2848&q=80',
  ),
  Playlist(
    title: 'Techno',
    songs: songs,
    imageUrl:
        'https://images.unsplash.com/photo-1594623930572-300a3011d9ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80',
  )
];
