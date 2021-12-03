import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  const Greeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'Good morning',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Icon(Icons.notifications),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Icon(Icons.schedule),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Icon(Icons.settings),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
