import 'package:flutter/material.dart';
import 'package:flutter_playground/store/theme_store.dart';
import 'package:flutter_playground/ui_ux/open_source_licenses.dart';
import 'package:flutter_playground/ui_ux/search_widget.dart';
import 'package:flutter_playground/values/assets.dart';
import 'package:flutter_playground/values/imports.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'my_home_page_store.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MyHomePageStore store;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (store == null) {
      store = Provider.of<MyHomePageStore>(context);
    }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: onFabPressed,
        child: Icon(Icons.lightbulb_outline),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => openMenuBottomSheet(context),
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () =>
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(store),
                  ),
            ),
          ],
        ),
        shape: CircularNotchedRectangle(),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Container(
                margin: const EdgeInsets.all(16),
                child: Text(
                  widget.title,
                  style: Theme.of(context).textTheme.title,
                ),
              ),
            ),
            Flexible(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                child: Container(
                  margin: const EdgeInsets.all(16),
                  child: Image.asset(
                    Assets.featureGraphic,
                    height: 150,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: _buildExampleItemsWidget(),
            ),
          ],
        ),
      ),
    );
  }

  _buildExampleItemsWidget() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) => ExampleNameItem(
        exampleNames: store.exampleList[index],
      ),
      itemCount: store.exampleList.length,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
    );
  }

  //Change Dark/Light Theme
  void onFabPressed() =>
      Provider.of<ThemeStore>(context, listen: false).changeTheme();

  //Open Menu Bottom Sheet
  openMenuBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Material(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
          ),
          child: Wrap(
            children: <Widget>[
              ListTile(
                title: Text('About'),
                onTap: () => openAboutDialog(context),
              ),
              Divider(),
              ListTile(
                title: Text('Open-source licenses'),
                onTap: () => navigateToOpnSourceLicence(),
              ),
              Divider(),
              ListTile(
                title: Text('Privacy Policy'),
                onTap: _launchURL,
              ),
            ],
          ),
        );
      },
    );
  }

  openAboutDialog(BuildContext context) {
    showAboutDialog(
      context: context,
      applicationLegalese:
      'Playground app for Flutter. Contains examples to quickly learn and tinker around with various features. Consider Contributing if you find this project helpful.',
      applicationIcon: Image.asset(
        Assets.appIcon,
        height: 24,
        width: 24,
      ),
    );
  }

  void _launchURL() async {
    const url = 'https://flutter-playground.flycricket.io/privacy.html';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void navigateToOpnSourceLicence() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => OpenSourceLicenses(),
      ),
    );
  }
}
