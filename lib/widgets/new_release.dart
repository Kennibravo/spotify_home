import 'package:flutter/material.dart';
import 'package:spotify_ui/utils.dart';

class NewRelease extends StatelessWidget {
  const NewRelease({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: customShadow,
          shape: BoxShape.rectangle,
          color: primaryColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: ClipRRect(
                child: Image.asset(
                  'images/wilddreams.jpeg',
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 16.0, bottom: 8),
                  child: Text(
                    'Listen to Westlife - Wild Dreams',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 10, right: 20),
                child: Icon(Icons.more_horiz),
              ),
            ),
          ],
        ));
  }
}
