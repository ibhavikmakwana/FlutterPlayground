import 'package:flutter/material.dart';

class DataClassExample extends StatelessWidget {
  final String title;

  DataClassExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.amber, child: Text("hefdnf")),
      ),
    );
  }
}
