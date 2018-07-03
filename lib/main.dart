import 'package:flutter/material.dart';
import 'package:flutter_examples/ExampleNameItem.dart';
import 'package:flutter_examples/models/ExapmleNames.dart';
import 'package:flutter_examples/ui/animatedicons/AnimatedIcons.dart';
import 'package:flutter_examples/ui/animatedsize/AnimatedSize.dart';
import 'package:flutter_examples/ui/app_bar/AppBarExample.dart';
import 'package:flutter_examples/ui/bottomnavigation/BottomNavigation.dart';
import 'package:flutter_examples/ui/collapsibletoolbar/CollapsibleToolbar.dart';
import 'package:flutter_examples/ui/drawer/NavigationDrawer.dart';
import 'package:flutter_examples/ui/progressbutton/ProgressButton.dart';
import 'package:flutter_examples/ui/staggeredanimation/StaggerDemo.dart';
import 'package:flutter_examples/utils/Strings.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: Strings.appName,
        theme: new ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: Strings.fontRobotoRegular,
        ),
        debugShowCheckedModeBanner: false,
        home: new MyHomePage(title: Strings.appName),
        routes: <String, WidgetBuilder>{
          Strings.appBarExampleRoute: (BuildContext context) => AppBarExample(),
          Strings.navigationDrawerExampleRoute: (BuildContext context) =>
              NavigationDrawer(),
          Strings.bottomNavigationExampleRoute: (BuildContext context) =>
              BottomNavigation(title: Strings.bottomNavigationTitle),
          Strings.collapsibleToolbarExampleRoute: (BuildContext context) =>
              CollapsibleToolbar(title: Strings.appName),
          Strings.animatedIconsExampleRoute: (BuildContext context) =>
              AnimatedIconsDemo(title: Strings.animatedIconsTitle),
          Strings.animatedSizeExampleRoute: (BuildContext context) =>
              AnimatedSizeDemo(title: Strings.animatedSizeTitle),
          Strings.progressButtonExampleRoute: (BuildContext context) =>
              ProgressButton(title: Strings.progressButtonTitle),
          Strings.staggerDemoExampleRoute: (BuildContext context) =>
              StaggerDemo(title: Strings.staggerDemoTitle),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Column(
        children: <Widget>[
          Expanded(
            child: new ListView.builder(
              itemBuilder: (BuildContext context, int index) =>
                  new ExampleNameItem(names[index]),
              itemCount: names.length,
            ),
          ),
        ],
      ),
    );
  }
}

// The list displayed by this app.
final List<ExampleNames> names = <ExampleNames>[
  new ExampleNames(Strings.appBarTitle),
  new ExampleNames(Strings.navigationDrawerTitle),
  new ExampleNames(Strings.collapsibleToolbarTitle),
  new ExampleNames(Strings.bottomNavigationTitle),
  new ExampleNames(Strings.animatedIconsTitle),
  new ExampleNames(Strings.animatedSizeTitle),
  new ExampleNames(Strings.progressButtonTitle),
  new ExampleNames(Strings.staggerDemoTitle),
];
