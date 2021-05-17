// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  const StepperExample({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _StepperExampleState createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int stepCounter = 0;
  List<Step> steps = [
    const Step(
      title: Text("Step One"),
      content: Text("This is the first step"),
      isActive: true,
    ),
    const Step(
      title: Text("Step Two"),
      content: Text("This is the second step"),
      isActive: true,
    ),
    Step(
      title: const Text("Step Three"),
      content: Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // main axis (rows or columns)
        children: const <Widget>[
          Chip(label: Text('Chips11')),
          Chip(label: Text('Chips12')),
          Chip(label: Text('Chips13')),
          Chip(label: Text('Chips14')),
          Chip(label: Text('Chips15')),
          Chip(label: Text('Chips16'))
        ],
      ),
      isActive: true,
    ),
    const Step(
      title: Text("Step Four"),
      content: Text("This is the fourth step"),
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stepper(
        currentStep: stepCounter,
        steps: steps,
        onStepTapped: (step) {
          setState(() {
            stepCounter = step;
          });
        },
        onStepCancel: () {
          setState(() {
            stepCounter > 0 ? stepCounter -= 1 : stepCounter = 0;
          });
        },
        onStepContinue: () {
          setState(() {
            stepCounter < steps.length - 1 ? stepCounter += 1 : stepCounter = 0;
          });
        },
      ),
    );
  }
}
