// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AnimatedSizeDemo extends StatefulWidget {
  const AnimatedSizeDemo({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _AnimatedSizeDemoState createState() => _AnimatedSizeDemoState();
}

class _AnimatedSizeDemoState extends State<AnimatedSizeDemo>
    with TickerProviderStateMixin {
  double _height = 80.0;
  double _width = 80.0;
  var _color = Colors.blue;
  bool _resized = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSize(
              curve: Curves.bounceInOut,
              vsync: this,
              duration: const Duration(seconds: 1),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (_resized) {
                      _resized = false;
                      _color = Colors.blue;
                      _height = 80.0;
                      _width = 80.0;
                    } else {
                      _resized = true;
                      _color = Colors.blue;
                      _height = 320.0;
                      _width = 320.0;
                    }
                  });
                },
                child: Container(
                  width: _width,
                  height: _height,
                  color: _color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
