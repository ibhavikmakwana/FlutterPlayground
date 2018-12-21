import 'package:flutter/material.dart';

class AnimatedSizeDemo extends StatefulWidget {
  AnimatedSizeDemo({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AnimatedSizeDemoState createState() => _AnimatedSizeDemoState();
}

class _AnimatedSizeDemoState extends State<AnimatedSizeDemo>
    with TickerProviderStateMixin {
  double _height = 80.0;
  double _width = 80.0;
  var _color = Colors.blue;
  bool _resized = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new AnimatedSize(
              curve: Curves.bounceInOut,
              child: new GestureDetector(
                onTap: () {
                  setState(() {
                    if (_resized) {
                      _resized = false;
                      _color = Colors.blue;
                      _height = 80.0;
                      _width = 80.0;
                    } else {
                      _resized = true;
                      _color = Colors.blue;
                      _height = 320.0;
                      _width = 320.0;
                    }
                  });
                },
                child: new Container(
                  width: _width,
                  height: _height,
                  color: _color,
                ),
              ),
              vsync: this,
              duration: new Duration(seconds: 1),
            ),
          ],
        ),
      ),
    );
  }
}
