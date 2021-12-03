import 'package:flutter/material.dart';
import 'package:spotify_ui/models.dart';

class LoveSong extends StatelessWidget {
  const LoveSong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Love',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Container(
            height: 200,
            // margin: const EdgeInsets.only(right: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: loveSongs.length,
              itemBuilder: (ctx, index) {
                return SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.38,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.36,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            loveSongs[index]['thumbnail']!,
                            fit: BoxFit.cover,
                            height: 150,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          loveSongs[index]['title']!,
                          style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
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
