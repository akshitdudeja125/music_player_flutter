// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_player/colors.dart';
import 'package:music_player/models/playlist_model.dart';
import 'package:music_player/widgets/custom_app_bar.dart';
import 'package:music_player/widgets/search_bar.dart';
import 'package:music_player/widgets/song_scroll_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: bgBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(),
        // bottomNavigationBar: NavBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(height: 30),
                CustomSearchBar(
                  hintText: 'What do you want to listen to?',
                ),
                const SizedBox(height: 30),
                Text(
                  'Browse All',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: playlists.length,
                  itemBuilder: (context, index) {
                    return searchScreenItem();
                  },
                ),
                // ListView.builder(
                //   shrinkWrap: true,
                //   itemCount: playlists.length,
                //   itemBuilder: (context, index) {
                //     return Container(
                //       margin: const EdgeInsets.only(top: 20),
                //       child: Row(
                //         children: [
                //           Text(
                //             playlists[index].title,
                //             style: TextStyle(
                //               color: Colors.white,
                //               fontSize: 20,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //           const Spacer(),
                //           Text(
                //             'See All',
                //             style: TextStyle(
                //               color: Colors.grey,
                //               fontSize: 15,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //         ],
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Container searchScreenItem() {
  return Container();
}
