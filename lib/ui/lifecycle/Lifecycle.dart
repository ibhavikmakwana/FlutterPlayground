// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Lifecycle extends StatefulWidget {
  final String title;

  Lifecycle({Key key, this.title}) : super(key: key);

  @override
  _LifecycleState createState() => _LifecycleState();
}

class _LifecycleState extends State<Lifecycle> with WidgetsBindingObserver {
  List<AppLifecycleState> _appLifecycleState = new List();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    setState(() {
      _appLifecycleState.add(state);
    });
  }

  List<Widget> _stateString() {
    if (_appLifecycleState != null) {
      return new List<Widget>.generate(_appLifecycleState.length, (int index) {
        return Text('lifecycle state : $_appLifecycleState,');
      });
    } else {
      return new List<Widget>.generate(1, (int index) {
        return Text('App started');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: _stateString(),
      ),
    );
  }
}
