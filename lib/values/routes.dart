import 'package:flutter_playground/values/imports.dart';

/// Avoid defining a class that contains only static members. (Documentation)

class DefaultRoutes {
  ///returns the named routes
  Map<String, WidgetBuilder> routes() {
    return <String, WidgetBuilder>{
      Strings.appBarExampleRoute: (BuildContext context) => AppBarExample(),
      Strings.tabBarExampleRoute: (BuildContext context) => const TabBarExample(title: Strings.tabBarTitle),
      Strings.navigationDrawerExampleRoute: (BuildContext context) => NavigationDrawerExample(),
      Strings.bottomNavigationExampleRoute: (BuildContext context) =>
          const BottomNavigation(title: Strings.bottomNavigationTitle),
      Strings.collapsibleToolbarExampleRoute: (BuildContext context) =>
          const CollapsibleToolbar(title: Strings.appName),
      Strings.animatedIconsExampleRoute: (BuildContext context) =>
          const AnimatedIconsDemo(title: Strings.animatedIconsTitle),
      Strings.animatedSizeExampleRoute: (BuildContext context) =>
          const AnimatedSizeDemo(title: Strings.animatedSizeTitle),
      Strings.progressButtonExampleRoute: (BuildContext context) =>
          const ProgressButton(title: Strings.progressButtonTitle),
      Strings.staggerDemoExampleRoute: (BuildContext context) => const StaggerDemo(title: Strings.staggerDemoTitle),
      Strings.stepperExampleRoute: (BuildContext context) => const StepperExample(title: Strings.stepperExampleTitle),
      Strings.hardwareKeyExampleRoute: (BuildContext context) =>
          const RawKeyboardDemo(title: Strings.hardwareKeyExampleTitle),
      Strings.dragDropExampleRoute: (BuildContext context) =>
          const DragAndDropExample(title: Strings.dragDropExampleTitle),
      Strings.animatedSwitcherExampleRoute: (BuildContext context) =>
          const AnimatedSwitcherExample(title: Strings.animatedSwitcherExampleTitle),
      Strings.textExampleExampleRoute: (BuildContext context) =>
          const TextExamples(title: Strings.textExampleExampleTitle),
      Strings.textSpanExampleRoute: (BuildContext context) =>
          const TextSpanExample(title: Strings.textSpanExampleTitle),
      Strings.textUnderlineExampleRoute: (BuildContext context) =>
          const TextUnderline(title: Strings.textUnderlineExampleTitle),
      Strings.aboutListTileExampleRoute: (BuildContext context) =>
          const AboutListTileExample(title: Strings.aboutListTileExampleTitle),
      Strings.lifeCycleStateExampleRoute: (BuildContext context) =>
          const Lifecycle(title: Strings.lifeCycleStateExampleTitle),
//      Strings.localAuthExampleRoute: (BuildContext context) =>
//          LocalAuthExample(title: Strings.localAuthTitle),
      Strings.rotatedBoxExampleRoute: (BuildContext context) => const RotatedBoxExample(Strings.rotatedBoxTitle),
      Strings.nestedListExampleRoute: (BuildContext context) => const NestedList(Strings.nestedListTitle),
      Strings.cupertinoTimerPickerRoute: (BuildContext context) =>
          const CupertinoTimerPickerExample(Strings.cupertinoTimerPickerTitle),
      Strings.cupertinoActionSheetRoute: (BuildContext context) =>
          const CupertinoActionSheetExample(Strings.cupertinoActionSheetTitle),
      Strings.cupertinoProgressIndicatorRoute: (BuildContext context) =>
          const CupertinoProgressIndicatorExample(Strings.cupertinoProgressIndicatorTitle),
      Strings.gridPaperRoute: (BuildContext context) => const GridPaperExample(Strings.gridPaperTitle),
      Strings.chipsExampleRoute: (BuildContext context) => const ChipsExample(Strings.chipsExampleTitle),
      Strings.expansionTileRoute: (BuildContext context) => const ExpansionTileExample(Strings.expansionTileTitle),
      Strings.rotationTransitionRoute: (BuildContext context) =>
          const RotationTransitionExample(Strings.rotationTransitionTitle),
      Strings.flowWidgetExampleRoute: (BuildContext context) => const FlowWidgetExample(Strings.flowWidgetExampleTitle),
      Strings.dismissibleExampleRoute: (BuildContext context) =>
          const DismissibleExample(Strings.dismissibleExampleTitle),
      Strings.backdropFilterExampleRoute: (BuildContext context) =>
          const BackdropFilterExample(Strings.backdropFilterExampleTitle),
      Strings.toolTipExampleRoute: (BuildContext context) => const ToolTipExample(Strings.toolTipExampleTitle),
      Strings.animatedCrossFadeExampleRoute: (BuildContext context) =>
          const AnimatedCrossFadeExample(Strings.animatedCrossFadeExampleTitle),
      Strings.flareRoute: (BuildContext context) => const FlareExample(Strings.flareTitle),
      Strings.dataClassExampleRoute: (BuildContext context) => const DataClassExample(Strings.dataClassExampleTitle),
//      Strings.googleMapsExampleRoute: (BuildContext context) =>
//          GoogleMapsExample(Strings.googleMapsExampleTitle),
      Strings.expandedExampleRoute: (BuildContext context) => const ExpandedExample(Strings.expandedExampleTitle),
      Strings.wrapExampleRoute: (BuildContext context) => const WrapExample(Strings.wrapExampleTitle),
      Strings.quickActionsRoute: (BuildContext context) => const QuickActionsExample(Strings.quickActionsTitle),
      Strings.bottomAppBarRoute: (BuildContext context) => const AppBarBottom(Strings.bottomAppBarTitle),
      Strings.transformExampleRoute: (BuildContext context) => const TransformExample(Strings.transformExampleTitle),
      Strings.gridViewExampleRoute: (BuildContext context) => const GridViewExample(Strings.gridViewExampleTitle),
//      Strings.admobPluginRoute: (BuildContext context) =>
//          AdMobExample(Strings.admobPluginExample),
    };
  }
}
