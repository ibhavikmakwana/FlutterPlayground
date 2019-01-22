// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_playground/utils/Strings.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  bool _isVisible = true;

  String _title = "Navigation Example";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: endDrawer(),
      drawer: startDrawer(),
      body: Center(child: Text(_title)),
    );
  }

  ///
  /// right hand side drawer using [UserAccountsDrawerHeader]
  /// [Drawer]
  ///
  Widget endDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Flutter Example"),
            accountEmail: Text("flutterexample@gmail.com"),
            currentAccountPicture: circularAvatars(),
            otherAccountsPictures: <Widget>[
              circularAvatars(),
              circularAvatars(),
              circularAvatars(),
            ],
            onDetailsPressed: () {
              setState(() {
                _isVisible = !_isVisible;
              });
            },
          ),
          Offstage(
            offstage: _isVisible,
            child: Column(
              children: <Widget>[
                createDrawerAccountListTiles(),
                createDrawerAccountListTiles(),
                createDrawerAccountListTiles(),
                createDrawerAccountListTiles(),
              ],
            ),
          ),
          Offstage(
            offstage: !_isVisible,
            child: Column(
              children: <Widget>[
                createDrawerListTiles(
                  Icons.photo_camera,
                  "Import",
                ),
                createDrawerListTiles(Icons.photo, "Gallery"),
                createDrawerListTiles(Icons.slideshow, "Slideshow"),
                createDrawerListTiles(Icons.build, "Tools"),
                Divider(),
                createDrawerListTiles(Icons.share, "Share"),
                createDrawerListTiles(Icons.send, "Send"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///
  /// left side drawer using [DrawerHeader]
  ///
  Widget startDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                FlutterLogo(
                  size: 48.0,
                ),
                Text(
                  "Flutter Example",
                  style: TextStyle(
                    fontFamily: Strings.fontRobotoRegular,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "flutterexample@gmail.com",
                  style: TextStyle(
                    fontFamily: Strings.fontRobotoRegular,
                    fontSize: 14.0,
                  ),
                ),
              ],
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            decoration: BoxDecoration(color: Colors.orangeAccent),
          ),
          createDrawerListTiles(Icons.photo_camera, "Import"),
          createDrawerListTiles(Icons.photo, "Gallery"),
          createDrawerListTiles(Icons.slideshow, "Slideshow"),
          createDrawerListTiles(Icons.build, "Tools"),
          Divider(),
          createDrawerListTiles(Icons.share, "Share"),
          createDrawerListTiles(Icons.send, "Send"),
        ],
      ),
    );
  }

  ///
  /// Account list tile
  ///
  Widget createDrawerAccountListTiles() {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.orangeAccent,
        child: FlutterLogo(),
      ),
      title: Text(
        "flutterexample@gmail.com",
        style: TextStyle(
          fontFamily: Strings.fontRobotoBold,
          fontSize: 16.0,
        ),
      ),
    );
  }

  ///
  /// Drawer container list tiles
  /// [IconData]
  ///
  Widget createDrawerListTiles(IconData icon, String title) {
    return ListTile(
      leading: Icon(
        icon,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: Strings.fontRobotoBold,
          fontSize: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _title = title;
          Navigator.pop(context);
        });
      },
    );
  }

  ///
  /// creates the circular avatar for the header
  /// [CircleAvatar]
  ///
  Widget circularAvatars() {
    return CircleAvatar(
      backgroundColor: Colors.orangeAccent,
      child: FlutterLogo(),
    );
  }
}
