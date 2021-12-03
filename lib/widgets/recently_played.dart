import 'package:flutter/material.dart';
import 'package:spotify_ui/models.dart';
import 'package:spotify_ui/utils.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recently played',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Container(
            height: 135,
            // margin: const EdgeInsets.only(right: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recentlyPlayed.length,
              itemBuilder: (ctx, index) {
                return SizedBox(
                  height: 130,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            recentlyPlayed[index]['thumbnail']!,
                            fit: BoxFit.cover,
                            height: 110,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      FittedBox(
                          child: Text(
                        recentlyPlayed[index]['title']!,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
