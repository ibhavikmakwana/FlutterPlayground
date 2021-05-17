// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextSpanExample extends StatefulWidget {
  final String title;

  const TextSpanExample({Key? key, required this.title}) : super(key: key);

  @override
  _TextSpanState createState() => _TextSpanState();
}

class _TextSpanState extends State<TextSpanExample> {
  final recognizer = TapGestureRecognizer()
    ..onTap = () {
      print("You have tapped Flutter");
    };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: textSpanPage());
  }

  Widget textSpanPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        textSpan(),
      ],
    );
  }

  Widget textSpan() {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 24.0,
          color: Colors.blue.shade500,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'Hello, This is the ',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24.0,
              color: Colors.blue.shade500,
            ),
          ),
          TextSpan(
            recognizer: recognizer,
            text: 'Flutter ',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 24.0,
              color: Colors.blue.shade900,
            ),
          ),
          const TextSpan(
            text: 'Playground',
          ),
        ],
      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
  }
}
