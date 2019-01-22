// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  AnimatedSwitcherExample({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AnimatedSwitcherExampleState createState() =>
      new _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                new Text(
                  'You have pushed the button this many times:',
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return new ScaleTransition(child: child, scale: animation);
                  },
                  child: new Text(
                    '$_counter',
                    // This key causes the AnimatedSwitcher to interpret this as a "new"
                    // child each time the count changes, so that it will begin its animation
                    // when the count changes.
                    key: new ValueKey<int>(_counter),
                    style: Theme.of(context).textTheme.display1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
