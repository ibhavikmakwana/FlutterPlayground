// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class FlowWidgetExample extends StatefulWidget {
  final String title;

  const FlowWidgetExample(this.title);

  @override
  FlowWidgetExampleState createState() {
    return FlowWidgetExampleState();
  }
}

class FlowWidgetExampleState extends State<FlowWidgetExample>
    with TickerProviderStateMixin {
  AnimationController? start;

  @override
  void initState() {
    super.initState();
    start = AnimationController.unbounded(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Flow(
          delegate: ExampleFlowDelegate(opacity: 0.2, startOffset: start),
          children: [
            buildBox(0, Colors.red),
            buildBox(1, Colors.deepPurple),
            buildBox(2, Colors.brown),
            buildBox(3, Colors.orange),
            buildBox(4, Colors.blueGrey),
            buildBox(5, Colors.cyan),
            buildBox(6, Colors.blue),
          ],
        ),
      ),
    );
  }

  Widget buildBox(int i, MaterialColor red) {
    return GestureDetector(
        onTap: () {
          print("TAPPED $i");
        },
        child: Container(
            width: 100.0,
            height: 50.0,
            color: red,
            child:
                Center(child: Text('$i', textDirection: TextDirection.ltr))));
  }
}

class ExampleFlowDelegate extends FlowDelegate {
  ExampleFlowDelegate({this.opacity, this.startOffset})
      : super(repaint: startOffset);

  double? opacity;
  Animation<double>? startOffset;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return constraints.loosen();
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dy = startOffset!.value;

    for (int i = 0; i < context.childCount; ++i) {
      context.paintChild(i,
          opacity: opacity!,
          transform: Matrix4.translationValues(0.0, dy, 0.0));
      dy += 0.65 * context.getChildSize(i)!.height;
    }
  }

  @override
  bool shouldRepaint(ExampleFlowDelegate oldDelegate) =>
      startOffset == oldDelegate.startOffset;
}
