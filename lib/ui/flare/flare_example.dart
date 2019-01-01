import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class FlareExample extends StatefulWidget {
  final String title;

  FlareExample(this.title);

  @override
  FlareExampleState createState() {
    return new FlareExampleState();
  }
}

class FlareExampleState extends State<FlareExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Center(
          child: FlareActor(
            "assets/GoogleSantaTracker.flr",
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: "Untitled",
          ),
        ),
      ),
    );
  }
}
