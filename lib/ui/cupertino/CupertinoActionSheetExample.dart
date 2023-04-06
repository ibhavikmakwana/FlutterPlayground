// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';

class CupertinoActionSheetExample extends StatelessWidget {
  final String title;

  const CupertinoActionSheetExample(this.title);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          previousPageTitle: "Back",
          middle: Text(title),
        ),
        child: const CupertinoActionSheet(
          actions: <Widget>[
            Center(child: Text("First Action")),
            Center(child: Text("Second Action")),
          ],
          cancelButton: Center(child: Text("Cancel")),
        ),
      ),
    );
  }
}
