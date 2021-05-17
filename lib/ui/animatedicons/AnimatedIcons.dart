// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AnimatedIconsDemo extends StatefulWidget {
  const AnimatedIconsDemo({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _AnimatedIconsState createState() => _AnimatedIconsState();
}

class _AnimatedIconsState extends State<AnimatedIconsDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      value: 1.0,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool get _status {
    final AnimationStatus status = _controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          getAnimatedIcon(AnimatedIcons.add_event, "Event to Add"),
          getAnimatedIcon(AnimatedIcons.arrow_menu, "Menu to Arrow"),
          getAnimatedIcon(AnimatedIcons.close_menu, "Menu to Close "),
          getAnimatedIcon(AnimatedIcons.ellipsis_search, "Search to Ellipsis"),
          getAnimatedIcon(AnimatedIcons.event_add, "Add to Event"),
          getAnimatedIcon(AnimatedIcons.home_menu, "Menu to Home"),
          getAnimatedIcon(AnimatedIcons.list_view, "View to List"),
          getAnimatedIcon(AnimatedIcons.menu_arrow, "Arrow to Menu"),
          getAnimatedIcon(AnimatedIcons.menu_close, "Close to Menu"),
          getAnimatedIcon(AnimatedIcons.menu_home, "Home to Menu"),
          getAnimatedIcon(AnimatedIcons.pause_play, "Play to Pause"),
          getAnimatedIcon(AnimatedIcons.play_pause, "Pause to Play"),
          getAnimatedIcon(AnimatedIcons.search_ellipsis, "Ellipsis to Search"),
          getAnimatedIcon(AnimatedIcons.view_list, "List to View"),
        ],
      ),
    );
  }

  Widget getAnimatedIcon(AnimatedIconData iconData, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                _controller.fling(velocity: _status ? -2.0 : 2.0);
              },
              icon: AnimatedIcon(
                icon: iconData,
                progress: _controller.view,
              ),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
