// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class ToolTipExample extends StatelessWidget {
  final String title;

  const ToolTipExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Tooltip(
            message: "This is Flutter Logo",
            child: FlutterLogo(),
          ),
          Tooltip(
            message: "This is Raised Button",
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("This is Button"),
            ),
          ),
          const Tooltip(
            message: "This is camera Icon",
            child: Icon(Icons.camera),
          )
        ],
      ),
    );
  }
}
