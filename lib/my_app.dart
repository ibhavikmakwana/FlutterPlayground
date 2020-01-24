import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_playground/ui_ux/home_page/my_home_page.dart';
import 'package:flutter_playground/values/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'store/theme_store.dart';
import 'ui_ux/home_page/my_home_page_store.dart';
import 'utils/Strings.dart';

class MyApp extends StatelessObserverWidget {
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
  FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      themeMode: Provider.of<ThemeStore>(context).themeMode,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: Provider(
        create: (context) => MyHomePageStore()..initList(),
        child: MyHomePage(title: Strings.appName),
      ),
      routes: DefaultRoutes.routes(),
    );
  }
}
