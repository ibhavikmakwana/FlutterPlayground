// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_playground/ui/datatable/data_table_example.dart';
import 'package:flutter_playground/ui/expanded_example/expanded_example.dart';
import 'package:flutter_playground/ui/flare/flare_example.dart';
import 'package:flutter_playground/ui/wrap/wrap_example.dart';

import 'imports.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: ThemeData(
        fontFamily: Strings.fontRobotoRegular,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: Strings.appName),
      routes: routes(),
    );
  }

  ///returns the named routes
  Map<String, WidgetBuilder> routes() {
    return <String, WidgetBuilder>{
      Strings.appBarExampleRoute: (BuildContext context) => AppBarExample(),
      Strings.tabBarExampleRoute: (BuildContext context) => TabBarExample(
            title: Strings.TabBarTitle,
          ),
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
      Strings.stepperExampleRoute: (BuildContext context) =>
          StepperExample(title: Strings.stepperExampleTitle),
      Strings.hardwareKeyExampleRoute: (BuildContext context) =>
          RawKeyboardDemo(title: Strings.hardwareKeyExampleTitle),
      Strings.dragDropExampleRoute: (BuildContext context) =>
          DragAndDropExample(title: Strings.dragDropExampleTitle),
      Strings.animatedSwitcherExampleRoute: (BuildContext context) =>
          AnimatedSwitcherExample(title: Strings.animatedSwitcherExampleTitle),
      Strings.textExampleExampleRoute: (BuildContext context) =>
          TextExamples(title: Strings.textExampleExampleTitle),
      Strings.textSpanExampleRoute: (BuildContext context) =>
          TextSpanExample(title: Strings.textSpanExampleTitle),
      Strings.textUnderlineExampleRoute: (BuildContext context) =>
          TextUnderline(title: Strings.textUnderlineExampleTitle),
      Strings.aboutListTileExampleRoute: (BuildContext context) =>
          AboutListTileExample(title: Strings.aboutListTileExampleTitle),
      Strings.lifeCycleStateExampleRoute: (BuildContext context) =>
          Lifecycle(title: Strings.lifeCycleStateExampleTitle),
//      Strings.localAuthExampleRoute: (BuildContext context) =>
//          LocalAuthExample(title: Strings.localAuthTitle),
      Strings.rotatedBoxExampleRoute: (BuildContext context) =>
          RotatedBoxExample(Strings.rotatedBoxTitle),
      Strings.nestedListExampleRoute: (BuildContext context) =>
          NestedList(Strings.nestedListTitle),
      Strings.cupertinoTimerPickerRoute: (BuildContext context) =>
          CupertinoTimerPickerExample(Strings.cupertinoTimerPickerTitle),
      Strings.CupertinoActionSheetRoute: (BuildContext context) =>
          CupertinoActionSheetExample(Strings.CupertinoActionSheetTitle),
      Strings.CupertinoProgressIndicatorRoute: (BuildContext context) =>
          CupertinoProgressIndicatorExample(
              Strings.CupertinoProgressIndicatorTitle),
      Strings.GridPaperRoute: (BuildContext context) =>
          GridPaperExample(Strings.GridPaperTitle),
      Strings.ChipsExampleRoute: (BuildContext context) =>
          ChipsExample(Strings.ChipsExampleTitle),
      Strings.ExpansionTileRoute: (BuildContext context) =>
          ExpansionTileExample(Strings.ExpansionTileTitle),
      Strings.RotationTransitionRoute: (BuildContext context) =>
          RotationTransitionExample(Strings.RotationTransitionTitle),
      Strings.FlowWidgetExampleRoute: (BuildContext context) =>
          FlowWidgetExample(Strings.FlowWidgetExampleTitle),
      Strings.dismissibleExampleRoute: (BuildContext context) =>
          DismissibleExample(Strings.dismissibleExampleTitle),
      Strings.BackdropFilterExampleRoute: (BuildContext context) =>
          BackdropFilterExample(Strings.BackdropFilterExampleTitle),
      Strings.googleMapsExampleRoute: (BuildContext context) =>
          GoogleMapsExample(Strings.googleMapsExampleTitle),
      Strings.toolTipExampleRoute: (BuildContext context) =>
          ToolTipExample(Strings.toolTipExampleTitle),
      Strings.animatedCrossFadeExampleRoute: (BuildContext context) =>
          AnimatedCrossFadeExample(Strings.animatedCrossFadeExampleTitle),
      Strings.flareRoute: (BuildContext context) =>
          FlareExample(Strings.flareTitle),
      Strings.dataClassExampleRoute: (BuildContext context) =>
          DataClassExample(Strings.dataClassExampleTitle),
      Strings.expandedExampleRoute: (BuildContext context) =>
          ExpandedExample(Strings.expandedExampleTitle),
      Strings.wrapExampleRoute: (BuildContext context) =>
          WrapExample(Strings.wrapExampleTitle),
    };
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      value: 1.0,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool status = false;

  bool get _status {
    final AnimationStatus status = _controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              _controller.fling(velocity: _status ? -2.0 : 2.0);
              setState(() {
                status = _status;
              });
            },
            icon: AnimatedIcon(
              icon: AnimatedIcons.view_list,
              progress: _controller.view,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: _buildExampleItemsWidget(_status),
          ),
        ],
      ),
    );
  }

  _buildExampleItemsWidget(bool status) {
    if (status) {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) => ExampleNameItem(
              exampleNames: names[index],
            ),
        itemCount: names.length,
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      );
    } else {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3.0,
        ),
        itemBuilder: (BuildContext context, int index) => ExampleNameItem(
              exampleNames: names[index],
            ),
        itemCount: names.length,
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      );
    }
  }
}

// The list displayed by this app.
final List<ExampleNames> names = <ExampleNames>[
  ExampleNames(Strings.appBarTitle),
  ExampleNames(Strings.TabBarTitle),
  ExampleNames(Strings.navigationDrawerTitle),
  ExampleNames(Strings.collapsibleToolbarTitle),
  ExampleNames(Strings.bottomNavigationTitle),
  ExampleNames(Strings.animatedIconsTitle),
  ExampleNames(Strings.animatedSizeTitle),
  ExampleNames(Strings.progressButtonTitle),
  ExampleNames(Strings.staggerDemoTitle),
  ExampleNames(Strings.stepperExampleTitle),
  ExampleNames(Strings.hardwareKeyExampleTitle),
  ExampleNames(Strings.dragDropExampleTitle),
  ExampleNames(Strings.textExampleExampleTitle),
  ExampleNames(Strings.animatedSwitcherExampleTitle),
  ExampleNames(Strings.aboutListTileExampleTitle),
  ExampleNames(Strings.lifeCycleStateExampleTitle),
//  ExampleNames(Strings.localAuthTitle),
  ExampleNames(Strings.rotatedBoxTitle),
  ExampleNames(Strings.nestedListTitle),
  ExampleNames(Strings.cupertinoTimerPickerTitle),
  ExampleNames(Strings.CupertinoActionSheetTitle),
  ExampleNames(Strings.CupertinoProgressIndicatorTitle),
  ExampleNames(Strings.GridPaperTitle),
  ExampleNames(Strings.ChipsExampleTitle),
  ExampleNames(Strings.ExpansionTileTitle),
  ExampleNames(Strings.RotationTransitionTitle),
  ExampleNames(Strings.FlowWidgetExampleTitle),
  ExampleNames(Strings.dismissibleExampleTitle),
  ExampleNames(Strings.BackdropFilterExampleTitle),
  ExampleNames(Strings.googleMapsExampleTitle),
  ExampleNames(Strings.toolTipExampleTitle),
  ExampleNames(Strings.animatedCrossFadeExampleTitle),
  ExampleNames(Strings.flareTitle),
  ExampleNames(Strings.dataClassExampleTitle),
  ExampleNames(Strings.expandedExampleTitle),
  ExampleNames(Strings.wrapExampleTitle),
];
