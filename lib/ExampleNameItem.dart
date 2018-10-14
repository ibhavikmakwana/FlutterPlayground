import 'package:flutter/material.dart';
import 'package:flutter_examples/models/ExapmleNames.dart';
import 'package:meta/meta.dart';

/// A [ExampleNameItem] to display a [ExampleNames].
class ExampleNameItem extends StatelessWidget {
  final ExampleNames exampleNames;
  final ValueChanged<ExampleNames> onTap;

  const ExampleNameItem({
    Key key,
    @required this.exampleNames,
    this.onTap,
  })  : assert(exampleNames != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
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
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/${exampleNames.title}");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: new Text(
                      exampleNames.title,
                    ),
                  ),
                ),
              ),
              new Icon(
                Icons.chevron_right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
