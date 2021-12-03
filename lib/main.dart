import 'package:flutter/material.dart';
import 'package:spotify_ui/utils.dart';
import 'package:spotify_ui/widgets/greeting.dart';
import 'package:spotify_ui/widgets/recent_songs.dart';
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
              children: const [
                // SizedBox(height: 35),
                Greeting(),
                SizedBox(height: 10),
                RecentSongs(),
                SizedBox(height: 18),
                YearInReview(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
