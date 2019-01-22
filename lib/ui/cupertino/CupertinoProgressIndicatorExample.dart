// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/cupertino.dart';

class CupertinoProgressIndicatorExample extends StatelessWidget {
  final String title;

  CupertinoProgressIndicatorExample(this.title);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: "Back",
        middle: Text(title),
      ),
      child: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
