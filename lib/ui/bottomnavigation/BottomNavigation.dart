import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _BottomNavigationState createState() => new _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  String _title = "Navigation Example";

  var _page = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(widget.title),
      ),
      body: Center(child: new Text(_title)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            title: Text("Photo"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text("Map"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favorite"),
          ),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }

  ///
  /// Bottom Navigation tap listener
  ///
  void navigationTapped(int value) {
    setState(() {
      this._page = value;
      if (value == 0) {
        _title = "Photo";
      } else if (value == 1) {
        _title = "Map";
      } else if (value == 2) {
        _title = "Favorite";
      }
    });
  }
}
