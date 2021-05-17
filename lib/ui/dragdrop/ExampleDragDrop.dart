// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class DragAndDropExample extends StatefulWidget {
  final String title;

  const DragAndDropExample({Key? key, required this.title}) : super(key: key);

  @override
  DragAndDropAppState createState() => DragAndDropAppState();
}

class DragAndDropAppState extends State<DragAndDropExample> {
  int position = 1;

  void moveRect(int pos) {
    setState(() {
      position = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Column(children: <Widget>[
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MovableRect(1, position, moveRect),
              MovableRect(2, position, moveRect),
              MovableRect(3, position, moveRect),
            ],
          )),
        ]));
  }
}

class Dot extends StatefulWidget {
  const Dot({Key? key, this.color, this.size, this.child}) : super(key: key);

  final Color? color;
  final double? size;
  final Widget? child;

  @override
  DotState createState() => DotState();
}

class DotState extends State<Dot> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.size,
        height: widget.size,
        decoration:
            BoxDecoration(color: widget.color, border: Border.all(width: 0.0)),
        child: widget.child);
  }
}

class OutlineRectPainter extends CustomPainter {
  const OutlineRectPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = const Color(0xFF000000)
      ..style = PaintingStyle.stroke;
    final Path path = Path();
    final Rect box = Offset.zero & size;

    path.addRect(box);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(OutlineRectPainter oldDelegate) => false;
}

class MovableRect extends StatelessWidget {
  const MovableRect(this.position, this.rectPosition, this.callback);

  final int position;
  final int rectPosition;
  final ValueChanged<int> callback;

  static final GlobalKey kRectKey = GlobalKey();
  static const double kRectSize = 50.0;

  @override
  Widget build(BuildContext context) {
    final Widget rect = Dot(
      key: kRectKey,
      color: Colors.blue.shade700,
      size: kRectSize,
    );
    const Widget outlineRect = SizedBox(
        width: kRectSize,
        height: kRectSize,
        child: CustomPaint(painter: OutlineRectPainter()));
    if (position == rectPosition) {
      return Draggable<bool>(
        data: true,
        childWhenDragging: outlineRect,
        feedback: rect,
        maxSimultaneousDrags: 2,
        child: rect,
      );
    } else {
      return DragTarget<bool>(onAccept: (bool data) {
        callback(position);
      }, builder:
          (BuildContext context, List<bool?> accepted, List<dynamic> rejected) {
        return outlineRect;
      });
    }
  }
}
