import 'package:flutter/material.dart';
import 'Sheet.dart';

class BottomSheetExample extends StatefulWidget {
  final String title;
  BottomSheetExample({Key key, this.title}) : super(key: key);

  @override
  _BottomSheetExampleState createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Text("Show Bottom Sheet"),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  elevation: 5.0,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (BuildContext bc) => Sheet());
            },
          ),
        ),
      ),
    );
  }
}
