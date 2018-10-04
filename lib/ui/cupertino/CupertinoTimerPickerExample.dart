import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTimerPickerExample extends StatelessWidget {
  final String title;

  CupertinoTimerPickerExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(title),
        previousPageTitle: "Back",
      ),
      body: Center(
        child: CupertinoTimerPicker(
          mode: CupertinoTimerPickerMode.hms,
          initialTimerDuration: Duration(hours: 1),
          onTimerDurationChanged: (Duration value) {},
          minuteInterval: 5,
          secondInterval: 60,
        ),
      ),
    );
  }
}
