// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class RotatedBoxExample extends StatelessWidget {
  final String title;

  const RotatedBoxExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            RotatedBox(
              quarterTurns: 1,
              child: Text("Hello World!"),
            ),
            RotatedBox(
              quarterTurns: 2,
              child: Text("Hello World!"),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Text("Hello World!"),
            ),
            RotatedBox(
              quarterTurns: 4,
              child: Text("Hello World!"),
            ),
          ],
        ),
      ),
    );
  }
}
