// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class TextUnderline extends StatefulWidget {
  final String title;

  const TextUnderline({Key? key, required this.title}) : super(key: key);

  @override
  _TextUnderlineState createState() => _TextUnderlineState();
}

class _TextUnderlineState extends State<TextUnderline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: textSpanPage());
  }

  Widget textSpanPage() {
    return Center(
      child: Column(
        children: <Widget>[
          textUnderLine("Flutter", TextDecorationStyle.solid, Colors.green),
          textUnderLine("Flutter", TextDecorationStyle.dashed, Colors.blue),
          textUnderLine("Flutter", TextDecorationStyle.dotted, Colors.red),
          textUnderLine("Flutter", TextDecorationStyle.wavy, Colors.amber),
        ],
      ),
    );
  }

  Widget textUnderLine(
      String text, TextDecorationStyle decorationStyle, Color color) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 48.0,
          color: color,
          decoration: TextDecoration.underline,
          decorationStyle: decorationStyle),
    );
  }
}
