import 'package:flutter/material.dart';
import 'package:flutter_examples/models/ExapmleNames.dart';

class ExampleNameItem extends StatelessWidget {
  const ExampleNameItem(this.exampleNames);

  final ExampleNames exampleNames;

  @override
  Widget build(BuildContext context) {
    return _buildTiles(exampleNames, context);
  }

  Widget _buildTiles(ExampleNames root, BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          elevation: 4.0,
          child: Container(
            decoration: new BoxDecoration(
              border: new Border(
                left: new BorderSide(
                  width: 4.0,
                  color: Colors.lightGreen,
                ),
              ),
            ),
            child: new ListTile(
                contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        root.title,
                        softWrap: true,
                      ),
                    ),
                    new Icon(Icons.chevron_right)
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/${exampleNames.title}");
                }),
          ),
        ),
      ],
    );
  }
}
