// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RawKeyboardDemo extends StatefulWidget {
  final String title;

  const RawKeyboardDemo({Key? key, required this.title}) : super(key: key);

  @override
  _HardwareKeyDemoState createState() => _HardwareKeyDemoState();
}

class _HardwareKeyDemoState extends State<RawKeyboardDemo> {
  final FocusNode _focusNode = FocusNode();
  RawKeyEvent? _event;

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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RawKeyboardListener(
          focusNode: _focusNode,
          onKey: _handleKeyEvent,
          child: AnimatedBuilder(
            animation: _focusNode,
            builder: (BuildContext context, Widget? child) {
              if (!_focusNode.hasFocus) {
                return GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(_focusNode);
                  },
                  child: Text('Tap to focus', style: textTheme.headlineMedium),
                );
              }

              if (_event == null) {
                return Text('Press Volume key', style: textTheme.headlineMedium);
              }

              int? flags;
              int? codePoint;
              int? keyCode;
              int? scanCode;
              int? metaState;
              final RawKeyEventData data = _event!.data;

              if (data is RawKeyEventDataAndroid) {
                flags = data.flags;
                codePoint = data.codePoint;
                keyCode = data.keyCode;
                scanCode = data.scanCode;
                metaState = data.metaState;
              }

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('${_event.runtimeType}', style: textTheme.titleMedium),
                  Text('flags: $flags', style: textTheme.titleMedium),
                  Text('codePoint: $codePoint', style: textTheme.titleMedium),
                  Text('keyCode: $keyCode', style: textTheme.titleMedium),
                  Text('scanCode: $scanCode', style: textTheme.titleMedium),
                  Text('metaState: $metaState', style: textTheme.titleMedium),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
