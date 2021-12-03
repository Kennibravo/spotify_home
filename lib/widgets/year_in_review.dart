import 'package:flutter/material.dart';
import 'package:spotify_ui/utils.dart';

class YearInReview extends StatelessWidget {
  const YearInReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          leading: Image.asset('images/liked.png'),
          title: const Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              '#SPOTIFYWRAPPED',
              style: TextStyle(fontSize: 11, color: Colors.black54),
            ),
          ),
          subtitle: const Text(
            'Your 2021 in review',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        const SizedBox(height: 6),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        boxShadow: customShadow,
                        shape: BoxShape.rectangle,
                        color: primaryColor),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: ShaderMask(
                        shaderCallback: (rect) {
                          return const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent],
                          ).createShader(
                              Rect.fromLTRB(0, 0, rect.width, rect.height));
                        },
                        blendMode: BlendMode.dstIn,
                        child: Image.asset(
                          'images/max.jpeg',
                          fit: BoxFit.cover,
                          height: 150,
                        ),
                      ),
                    ),
                  ),
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                    ),
                    icon: const Icon(Icons.play_circle),
                    label: const Text('Play'),
                    onPressed: () {},
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        boxShadow: customShadow,
                        shape: BoxShape.rectangle,
                        color: primaryColor),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'images/blackbear.jpeg',
                        fit: BoxFit.cover,
                        height: 150,
                        width: 210,
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                    ),
                    onPressed: () {},
                    child: const Text('Your Top Songs 2021'),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
