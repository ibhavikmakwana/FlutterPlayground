import 'package:flutter/material.dart';

class GridPaperExample extends StatelessWidget {
  final String title;
  GridPaperExample(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridPaper(color: Colors.red,child: Container(),),
    );
  }
}
