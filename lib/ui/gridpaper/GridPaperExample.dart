// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class GridPaperExample extends StatelessWidget {
  final String title;

  const GridPaperExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridPaper(
        color: Colors.red,
        child: Container(),
      ),
    );
  }
}
