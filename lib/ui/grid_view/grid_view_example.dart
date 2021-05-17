// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  final String title;

  const GridViewExample(this.title) : super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Item(index);
          }),
    );
  }
}

class Item extends StatelessWidget {
  const Item(this.index);
  final int index;

  Widget _buildTiles() {
    return GridTile(
      key: PageStorageKey(index),
      child: Center(
        child: Text(
          index.toString(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles();
  }
}
