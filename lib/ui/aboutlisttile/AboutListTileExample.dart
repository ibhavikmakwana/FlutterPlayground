// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AboutListTileExample extends StatefulWidget {
  final String title;

  AboutListTileExample({Key key, this.title}) : super(key: key);

  @override
  _AboutListTileState createState() => new _AboutListTileState();
}

class _AboutListTileState extends State<AboutListTileExample> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            AboutListTile(
              icon: FlutterLogo(),
              child: Text("About"),
              aboutBoxChildren: <Widget>[
                Text("Playground app for Flutter. Contains list of examples."),
              ],
              applicationIcon: FlutterLogo(),
              applicationName: "Flutter Playground",
              applicationVersion: "1.0.0",
            ),
          ],
        ),
      ),
    );
  }
}
