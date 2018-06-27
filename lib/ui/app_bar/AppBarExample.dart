import 'package:flutter/material.dart';

class AppBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Default Appbar"),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ///App bar with background color
          GestureDetector(
            child: Container(
              child: new AppBar(
                title: new Text("Appbar 1"),
                backgroundColor: Colors.orange,
                elevation: 4.0,
              ),
              margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
            ),
          ),

          ///App bar with Action items
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: new AppBar(
              title: new Text("Appbar actions"),
              actions: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.search),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.settings),
                  onPressed: () {},
                ),
              ],
            ),
          ),

          ///Center text
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: new AppBar(
              title: new Text("Center"),
              centerTitle: true,
            ),
          ),

          ///IconTheme for the app bar
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: new AppBar(
              title: new Text("Appbar Icon Theme"),
              actions: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.search),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.settings),
                  onPressed: () {},
                ),
              ],
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
              textTheme: TextTheme(
                title: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),

          ///App bar with the title and subtitle
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: new AppBar(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text(
                    "Title",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  new Text(
                    "subtitle",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
