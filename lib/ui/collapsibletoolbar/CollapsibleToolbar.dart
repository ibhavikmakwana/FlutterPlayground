// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';

class CollapsibleToolbar extends StatefulWidget {
  CollapsibleToolbar({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CollapsibleToolbarState createState() => _CollapsibleToolbarState();
}

class _CollapsibleToolbarState extends State<CollapsibleToolbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.title),
            ),
          ),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => Text("Flutter list items"),
              ),
              itemExtent: 24.0)
        ],
      ),
    );
  }
}
