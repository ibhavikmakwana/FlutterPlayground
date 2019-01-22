// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class DragAndDropExample extends StatefulWidget {
  final String title;

  DragAndDropExample({Key key, this.title}) : super(key: key);

  @override
  DragAndDropAppState createState() => new DragAndDropAppState();
}

class DragAndDropAppState extends State<DragAndDropExample> {
  int position = 1;

  void moveRect(int newPosition) {
    setState(() {
      position = newPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: Text(widget.title)),
        body: new Column(children: <Widget>[
          new Expanded(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new MovableRect(1, position, moveRect),
                  new MovableRect(2, position, moveRect),
                  new MovableRect(3, position, moveRect),
                ],
              )),
        ]));
  }
}

class Dot extends StatefulWidget {
  const Dot({Key key, this.color, this.size, this.child}) : super(key: key);

  final Color color;
  final double size;
  final Widget child;

  @override
  DotState createState() => new DotState();
}

class DotState extends State<Dot> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        width: widget.size,
        height: widget.size,
        decoration: new BoxDecoration(
            color: widget.color,
            border: new Border.all(width: 0.0),
            shape: BoxShape.rectangle),
        child: widget.child);
  }
}

class OutlineRectPainter extends CustomPainter {
  const OutlineRectPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = new Paint()
      ..color = const Color(0xFF000000)
      ..style = PaintingStyle.stroke;
    final Path path = new Path();
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

  static final GlobalKey kRectKey = new GlobalKey();
  static const double kRectSize = 50.0;

  @override
  Widget build(BuildContext context) {
    final Widget rect = new Dot(
      key: kRectKey,
      color: Colors.blue.shade700,
      size: kRectSize,
    );
    final Widget outlineRect = new Container(
        width: kRectSize,
        height: kRectSize,
        child: const CustomPaint(painter: const OutlineRectPainter()));
    if (position == rectPosition) {
      return new Draggable<bool>(
          data: true,
          child: rect,
          childWhenDragging: outlineRect,
          feedback: rect,
          maxSimultaneousDrags: 2);
    } else {
      return new DragTarget<bool>(onAccept: (bool data) {
        callback(position);
      }, builder:
          (BuildContext context, List<bool> accepted, List<dynamic> rejected) {
        return outlineRect;
      });
    }
  }
}
