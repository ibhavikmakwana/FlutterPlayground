import 'dart:math';

import 'package:flutter/material.dart';

class TransformExample extends StatelessWidget {
  final String title;

  const TransformExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 10 / 1000)
              ..rotateX(pi),
            child: Container(
              color: Colors.indigo,
              height: 150,
              width: 150,
            ),
          ),
          Transform.scale(
            scale: 2,
            origin: const Offset(0, 0),
            child: Container(
              color: Colors.indigo,
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
