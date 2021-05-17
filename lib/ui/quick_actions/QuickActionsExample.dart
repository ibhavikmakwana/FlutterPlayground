import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';

class QuickActionsExample extends StatefulWidget {
  const QuickActionsExample(this.title);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<QuickActionsExample> {
  @override
  void initState() {
    super.initState();
    final QuickActions quickActions = QuickActions();
    quickActions.initialize((String shortcutType) {
      if (shortcutType == 'flutter_playground') {
        print('Hey. There Welcome to the Flutter Playground app');
      }
    });

    quickActions.setShortcutItems(
      <ShortcutItem>[
        const ShortcutItem(
          type: 'flutter_playground',
          localizedTitle: 'Flutter Playground',
          icon: 'AppIcon',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text(
          'On home screen, long press the icon to '
          'get Main view action. Tapping on that action should print '
          'a message to the log.',
        ),
      ),
    );
  }
}
