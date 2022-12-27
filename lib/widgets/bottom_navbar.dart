import 'package:flutter/material.dart';
import 'package:music_player/colors.dart';
import 'package:music_player/screens/home_screen.dart';

import '../screens/search_screen.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  void updatePage(int index) {
    setState(() {
      _page = index;
    });
  }

  List<Widget> pages = [
    const HomePage(),
    const SearchScreen(),
    const Scaffold(
      body: Center(
        child: Text('3'),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: bgBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: pages[_page],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.grey.shade300,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          onTap: updatePage,
          currentIndex: _page,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music_sharp),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
