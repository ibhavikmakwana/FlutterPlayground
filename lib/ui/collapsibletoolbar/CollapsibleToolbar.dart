// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';

class CollapsibleToolbar extends StatefulWidget {
  CollapsibleToolbar({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CollapsibleToolbarState createState() => new _CollapsibleToolbarState();
}

class _CollapsibleToolbarState extends State<CollapsibleToolbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: new FlexibleSpaceBar(
              title: new Text(widget.title),
            ),
          ),
          new SliverFixedExtentList(
              delegate: new SliverChildBuilderDelegate(
                    (context, index) => new Text("Flutter list items"),
              ),
              itemExtent: 24.0)
        ],
      ),
    );
  }
}
