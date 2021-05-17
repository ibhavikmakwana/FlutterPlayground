// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTimerPickerExample extends StatelessWidget {
  final String title;

  const CupertinoTimerPickerExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(title),
        previousPageTitle: "Back",
      ),
      body: Center(
        child: CupertinoTimerPicker(
          initialTimerDuration: const Duration(hours: 1),
          onTimerDurationChanged: (Duration value) {},
          minuteInterval: 5,
          secondInterval: 60,
        ),
      ),
    );
  }
}
