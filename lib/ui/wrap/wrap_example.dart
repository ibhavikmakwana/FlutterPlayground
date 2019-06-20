import 'dart:math';

import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  final String title;

  WrapExample(this.title);

  @override
  Widget build(BuildContext context) {
    List colors = [Colors.red, Colors.green, Colors.yellow];
    Random random = new Random();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Wrap(
          children: <Widget>[
            Container(
              color: colors[random.nextInt(3)],
              height: 100,
              width: 100,
            ),
            SizedBox(width: 5, height: 5),
            Container(
              color: colors[random.nextInt(3)],
              height: 100,
              width: 100,
            ),
            SizedBox(width: 5, height: 5),
            Container(
              color: colors[random.nextInt(3)],
              height: 100,
              width: 100,
            ),
            SizedBox(width: 5, height: 5),
            Container(
              color: colors[random.nextInt(3)],
              height: 100,
              width: 100,
            ),
            SizedBox(width: 5, height: 5),
            Container(
              color: colors[random.nextInt(3)],
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
