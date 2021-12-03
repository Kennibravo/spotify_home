import 'package:flutter/material.dart';
import 'package:spotify_ui/models.dart';
import 'package:spotify_ui/utils.dart';

class RecentSongs extends StatelessWidget {
  const RecentSongs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildRecentSong(var song) {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: customShadow,
              shape: BoxShape.rectangle,
              color: primaryColor),
          child: ListTile(
            leading: ClipRect(
              child: Image.asset(song['thumbnail']!),
            ),
            title: Text(
              song['title']!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.fade,
            ),
            trailing: const Icon(Icons.more_horiz),
          ),
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Row(
            children:
                recentSongs1.map((song) => _buildRecentSong(song)).toList(),
          ),
          const SizedBox(height: 5),
          Row(
            children:
                recentSongs2.map((song) => _buildRecentSong(song)).toList(),
          ),
          const SizedBox(height: 5),
          Row(
            children:
                recentSongs3.map((song) => _buildRecentSong(song)).toList(),
          ),
        ],
      ),
    );
  }
}
