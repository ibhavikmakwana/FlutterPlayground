import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  final String title;

  const ExpandedExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                color: Colors.yellow,
                width: 50,
                height: 50,
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                  height: 50,
                  width: 50,
                ),
              ),
              Container(
                color: Colors.yellow,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Container(
                  color: Colors.purple,
                  width: 50,
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    width: 50,
                  ),
                ),
                Container(
                  color: Colors.purple,
                  width: 50,
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.yellow,
                width: 50,
                height: 50,
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                  height: 50,
                  width: 50,
                ),
              ),
              Container(
                color: Colors.yellow,
                width: 50,
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
