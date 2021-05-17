// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class ChipsExample extends StatefulWidget {
  final String title;

  const ChipsExample(this.title);

  @override
  ChipsExampleState createState() {
    return ChipsExampleState();
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
            label: const Text("Simple Chip"),
            //This mode has anti-aliased clipping edges to achieve a smoother look.
            clipBehavior: Clip.antiAlias,
            deleteIcon: const Icon(Icons.remove),
            onDeleted: () {},
            materialTapTargetSize: MaterialTapTargetSize.padded,
            avatar: const CircleAvatar(child: FlutterLogo()),
          ),
          ActionChip(
            label: const Text("Action Chip"),
            onPressed: () {},
            pressElevation: 4.0,
            avatar: const CircleAvatar(child: FlutterLogo()),
          )
        ],
      ),
    );
  }
}
