// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class NestedList extends StatelessWidget {
  final String title;

  const NestedList(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        primary: true,
        itemBuilder: (BuildContext context, int index) {
          return buildHorizontalListView();
        },
        itemCount: 5,
      ),
    );
  }

  Widget buildHorizontalListView() {
    return SizedBox(
      height: 50.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 50.0,
            child: ListTile(
              title: Text(index.toString()),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
