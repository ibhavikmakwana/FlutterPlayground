import 'package:flutter/material.dart';
import 'package:flutter_playground/ui/grid_view/grid_view_example.dart';
import 'package:flutter_playground/utils/Strings.dart';

import 'imports.dart';

class DefaultRoutes {
  ///returns the named routes
  static Map<String, WidgetBuilder> routes() {
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
      Strings.toolTipExampleRoute: (BuildContext context) =>
          ToolTipExample(Strings.toolTipExampleTitle),
      Strings.animatedCrossFadeExampleRoute: (BuildContext context) =>
          AnimatedCrossFadeExample(Strings.animatedCrossFadeExampleTitle),
      Strings.flareRoute: (BuildContext context) =>
          FlareExample(Strings.flareTitle),
      Strings.dataClassExampleRoute: (BuildContext context) =>
          DataClassExample(Strings.dataClassExampleTitle),
//      Strings.googleMapsExampleRoute: (BuildContext context) =>
//          GoogleMapsExample(Strings.googleMapsExampleTitle),
      Strings.expandedExampleRoute: (BuildContext context) =>
          ExpandedExample(Strings.expandedExampleTitle),
      Strings.wrapExampleRoute: (BuildContext context) =>
          WrapExample(Strings.wrapExampleTitle),
      Strings.quickActionsRoute: (BuildContext context) =>
          QuickActionsExample(Strings.quickActionsTitle),
      Strings.bottomAppBarRoute: (BuildContext context) =>
          AppBarBottom(Strings.bottomAppBarTitle),
      Strings.TransformExampleRoute: (BuildContext context) =>
          TransformExample(Strings.TransformExampleTitle),
      Strings.GridViewExampleRoute: (BuildContext context) =>
          GridViewExample(Strings.GridViewExampleTitle),
//      Strings.admobPluginRoute: (BuildContext context) =>
//          AdMobExample(Strings.admobPluginExample),
    };
  }
}
