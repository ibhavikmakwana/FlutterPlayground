import 'package:flutter/material.dart';

class ChipsExample extends StatefulWidget {
  final String title;

  ChipsExample(this.title);

  @override
  ChipsExampleState createState() {
    return new ChipsExampleState();
  }
}

class ChipsExampleState extends State<ChipsExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
