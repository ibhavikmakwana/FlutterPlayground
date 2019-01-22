// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToolTipExample extends StatelessWidget {
  final String title;

  ToolTipExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Tooltip(
            child: FlutterLogo(),
            message: "This is Flutter Logo",
          ),
          Tooltip(
            message: "This is Raised Button",
            child: RaisedButton(
              onPressed: () {},
              child: Text("This is Button"),
            ),
          ),
          Tooltip(
            child: Icon(Icons.camera),
            message: "This is camera Icon",
          )
        ],
      ),
    );
  }
}
