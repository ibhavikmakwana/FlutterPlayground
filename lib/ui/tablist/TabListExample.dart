// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// The base class for the different types of items the List can contain
abstract class ListItem {}

// A ListItem that contains data to display a heading
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

// A ListItem that contains data to display a message
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}

class TabListExample extends StatefulWidget {
  final items = List<ListItem>.generate(
    20,
        (i) => HeadingItem("Heading $i"),
  );

  @override
  _NestedListExampleState createState() => _NestedListExampleState();
}

class _NestedListExampleState extends State<TabListExample>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;
  var _globalKey = GlobalKey();

  @override
  void initState() {
    _tabController =
    new TabController(length: widget.items.length, vsync: this);
    _scrollController = ScrollController();
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabSelection() {
    setState(() {
      _scrollController.animateTo(_tabController.offset,
          curve: Curves.ease, duration: Duration(seconds: 2));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nested List"),
        bottom: TabBar(
          isScrollable: true,
          tabs: List<Widget>.generate(
            widget.items.length,
                (int index) {
              return new Tab(
                text: "$index",
              );
            },
          ),
          controller: _tabController,
        ),
      ),
      body: ListView.builder(
        controller: _scrollController,
        // Let the ListView know how many items it needs to build
        itemCount: widget.items.length,
        // Provide a builder function. This is where the magic happens! We'll
        // convert each item into a Widget based on the type of item it is.
        itemBuilder: (context, index) {
          final item = widget.items[index];
          if (item is HeadingItem) {
            return ListTile(
              key: _globalKey,
              title: Text(
                item.heading,
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }
        },
      ),
    );
  }
}
