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
        new ListTile(
            contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
            title: new Text(
              root.title,
              softWrap: true,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/${exampleNames.title}");
            }),
        new Divider(),
      ],
    );
  }
}
