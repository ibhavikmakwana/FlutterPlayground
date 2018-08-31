import 'package:flutter/widgets.dart';

class WidgetAppExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      title: "WidgetApp Example",
      checkerboardOffscreenLayers: true,
      color: null,
    );
  }
}
