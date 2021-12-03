import 'package:flutter/material.dart';
import 'package:spotify_ui/utils.dart';
import 'package:spotify_ui/widgets/greeting.dart';
import 'package:spotify_ui/widgets/love_song.dart';
import 'package:spotify_ui/widgets/new_release.dart';
import 'package:spotify_ui/widgets/recent_songs.dart';
import 'package:spotify_ui/widgets/recently_played.dart';
import 'package:spotify_ui/widgets/year_in_review.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: primaryColor,
        bottomNavigationBar: BottomNavigationBar(
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
              icon: Icon(Icons.library_music_outlined),
              label: 'Your Library',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 30),
                Greeting(),
                SizedBox(height: 10),
                RecentSongs(),
                SizedBox(height: 18),
                YearInReview(),
                SizedBox(height: 15),
                NewRelease(),
                SizedBox(height: 20),
                RecentlyPlayed(),
                SizedBox(height: 25),
                LoveSong(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
