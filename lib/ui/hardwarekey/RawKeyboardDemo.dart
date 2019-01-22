// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RawKeyboardDemo extends StatefulWidget {
  final String title;

  RawKeyboardDemo({Key key, this.title}) : super(key: key);

  @override
  _HardwareKeyDemoState createState() => new _HardwareKeyDemoState();
}

class _HardwareKeyDemoState extends State<RawKeyboardDemo> {
  final FocusNode _focusNode = new FocusNode();
  RawKeyEvent _event;

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _handleKeyEvent(RawKeyEvent event) {
    setState(() {
      _event = event;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Center(
        child: new RawKeyboardListener(
          focusNode: _focusNode,
          onKey: _handleKeyEvent,
          child: new AnimatedBuilder(
            animation: _focusNode,
            builder: (BuildContext context, Widget child) {
              if (!_focusNode.hasFocus) {
                return new GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(_focusNode);
                  },
                  child: new Text('Tap to focus', style: textTheme.display1),
                );
              }

              if (_event == null)
                return new Text('Press Volume key', style: textTheme.display1);

              int flags;
              int codePoint;
              int keyCode;
              int scanCode;
              int metaState;
              final RawKeyEventData data = _event.data;

              if (data is RawKeyEventDataAndroid) {
                flags = data.flags;
                codePoint = data.codePoint;
                keyCode = data.keyCode;
                scanCode = data.scanCode;
                metaState = data.metaState;
              }

              return new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text('${_event.runtimeType}', style: textTheme.subhead),
                  new Text('flags: $flags', style: textTheme.subhead),
                  new Text('codePoint: $codePoint', style: textTheme.subhead),
                  new Text('keyCode: $keyCode', style: textTheme.subhead),
                  new Text('scanCode: $scanCode', style: textTheme.subhead),
                  new Text('metaState: $metaState', style: textTheme.subhead),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
