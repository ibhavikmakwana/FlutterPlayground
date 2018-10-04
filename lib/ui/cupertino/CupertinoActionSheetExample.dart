import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetExample extends StatelessWidget {
  final String title;

  CupertinoActionSheetExample(this.title);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          previousPageTitle: "Back",
          middle: Text(title),
        ),
        child: CupertinoActionSheet(
          actions: <Widget>[
            Center(child: Text("First Action")),
            Center(child: Text("Second Action")),
          ],
          cancelButton: Center(child: Text("Cancle")),
        ),
      ),
    );
  }
}
