import 'package:flutter/material.dart';
import 'package:flutter_playground/models/ExapmleNames.dart';
import 'package:meta/meta.dart';

/// A [ExampleNameItem] to display a [ExampleNames].
class ExampleNameItem extends StatelessWidget {
  final ExampleNames exampleNames;
  final ValueChanged<ExampleNames> onTap;

  const ExampleNameItem({
    Key key,
    @required this.exampleNames,
    this.onTap,
  })
      : assert(exampleNames != null),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                  child: new Text(
                    exampleNames.title,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Icon(
                  Icons.chevron_right,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

