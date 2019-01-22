// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class RotatedBoxExample extends StatelessWidget {
  final String title;

  RotatedBoxExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RotatedBox(
              child: Text("Hello World!"),
              quarterTurns: 1,
            ),
            RotatedBox(
              child: Text("Hello World!"),
              quarterTurns: 2,
            ),
            RotatedBox(
              child: Text("Hello World!"),
              quarterTurns: 3,
            ),
            RotatedBox(
              child: Text("Hello World!"),
              quarterTurns: 4,
            ),
          ],
        ),
      ),
    );
  }
}
