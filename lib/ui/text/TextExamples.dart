// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_playground/utils/Strings.dart';

class TextExamples extends StatefulWidget {
  final String title;

  TextExamples({Key key, this.title}) : super(key: key);

  @override
  _TextExamplesState createState() => _TextExamplesState();
}

class _TextExamplesState extends State<TextExamples> {
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          textButtons(
            Strings.textSpanExampleTitle,
            Strings.textSpanExampleRoute,
          ),
          textButtons(
            Strings.textUnderlineExampleTitle,
            Strings.textUnderlineExampleRoute,
          ),
        ],
      ),
    );
  }

  textButtons(String text, String route) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        child: Text(text),
        shape: RoundedRectangleBorder(),
        color: Colors.red,
        textColor: Colors.white,
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}
