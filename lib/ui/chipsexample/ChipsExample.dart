// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class ChipsExample extends StatefulWidget {
  final String title;

  ChipsExample(this.title);

  @override
  ChipsExampleState createState() {
    return new ChipsExampleState();
  }
}

class ChipsExampleState extends State<ChipsExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Chip(
            label: Text("Simple Chip"),
            //This mode has anti-aliased clipping edges to achieve a smoother look.
            clipBehavior: Clip.antiAlias,
            deleteIcon: Icon(Icons.remove),
            onDeleted: () {},
            materialTapTargetSize: MaterialTapTargetSize.padded,
            avatar: CircleAvatar(child: FlutterLogo()),
          ),
          ActionChip(
            label: Text("Action Chip"),
            onPressed: () {},
            pressElevation: 4.0,
            avatar: CircleAvatar(child: FlutterLogo()),
          )
        ],
      ),
    );
  }
}
