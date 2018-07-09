import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  StepperExample({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _StepperExampleState createState() => new _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int stepCounter = 0;
  List<Step> steps = [
    new Step(
      title: new Text("Step One"),
      content: new Text("This is the first step"),
      isActive: true,
    ),
    new Step(
      title: new Text("Step Two"),
      content: new Text("This is the second step"),
      isActive: true,
    ),
    new Step(
      title: new Text("Step Three"),
      content: new Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        direction: Axis.horizontal, // main axis (rows or columns)
        children: <Widget>[
          new Chip(label: new Text('Chips11')),
          new Chip(label: new Text('Chips12')),
          new Chip(label: new Text('Chips13')),
          new Chip(label: new Text('Chips14')),
          new Chip(label: new Text('Chips15')),
          new Chip(label: new Text('Chips16'))
        ],
      ),
      isActive: true,
    ),
    new Step(
      title: new Text("Step Four"),
      content: new Text("This is the fourth step"),
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Stepper(
        currentStep: this.stepCounter,
        steps: steps,
        type: StepperType.vertical,
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
