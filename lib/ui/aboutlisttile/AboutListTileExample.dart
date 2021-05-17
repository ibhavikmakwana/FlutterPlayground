// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AboutListTileExample extends StatefulWidget {
  final String title;

  const AboutListTileExample({Key? key, required this.title}) : super(key: key);

  @override
  _AboutListTileState createState() => _AboutListTileState();
}

class _AboutListTileState extends State<AboutListTileExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: const <Widget>[
          AboutListTile(
            icon: FlutterLogo(),
            aboutBoxChildren: <Widget>[
              Text("Playground app for Flutter. Contains list of examples."),
            ],
            applicationIcon: FlutterLogo(),
            applicationName: "Flutter Playground",
            applicationVersion: "1.0.0",
            child: Text("About"),
          ),
        ],
      ),
    );
  }
}
