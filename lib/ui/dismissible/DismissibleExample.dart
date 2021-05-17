// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class DismissibleExample extends StatelessWidget {
  final String title;

  const DismissibleExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Dismissible(
          key: Key(index.toString()),
          background: Container(
            color: Colors.red,
          ),
          onDismissed: onDismissed,
          movementDuration: const Duration(seconds: 1),
          secondaryBackground: Container(
            color: Colors.yellow,
          ),
          child: ListTile(
            title: Text("Tile $index"),
          ),
        ),
      ),
    );
  }

  void onDismissed(DismissDirection index) {
    print("$index removed");
  }
}
