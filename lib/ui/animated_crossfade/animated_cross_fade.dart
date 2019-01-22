// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  final String title;

  AnimatedCrossFadeExample(this.title);

  @override
  _AnimatedCrossFadeExampleState createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    setState(() {
                      _first = !_first;
                    });
                  },
                  child: Text("Click")),
              AnimatedCrossFade(
                sizeCurve: ElasticOutCurve(),
                firstCurve: Curves.decelerate,
                secondCurve: Curves.decelerate,
                duration: const Duration(seconds: 3),
                firstChild: const FlutterLogo(
                    style: FlutterLogoStyle.horizontal, size: 100.0),
                secondChild: const FlutterLogo(
                    style: FlutterLogoStyle.markOnly, size: 100.0),
                crossFadeState: _first
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
