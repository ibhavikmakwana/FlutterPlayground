// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class FlareExample extends StatefulWidget {
  final String title;

  const FlareExample(this.title);

  @override
  FlareExampleState createState() {
    return FlareExampleState();
  }
}

class FlareExampleState extends State<FlareExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: FlareActor(
          "assets/GoogleSantaTracker.flr",
          animation: "Untitled",
        ),
      ),
    );
  }
}
