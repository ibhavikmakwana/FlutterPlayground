import 'package:flutter/cupertino.dart';

class CupertinoProgressIndicatorExample extends StatelessWidget {
  final String title;

  CupertinoProgressIndicatorExample(this.title);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: "Back",
        middle: Text(title),
      ),
      child: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
