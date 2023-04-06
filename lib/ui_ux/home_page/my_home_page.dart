import 'package:flutter/material.dart';
import 'package:flutter_playground/store/theme_store.dart';
import 'package:flutter_playground/ui_ux/home_page/my_home_page_store.dart';
import 'package:flutter_playground/ui_ux/open_source_licenses.dart';
import 'package:flutter_playground/ui_ux/search_widget.dart';
import 'package:flutter_playground/values/assets.dart';
import 'package:flutter_playground/values/imports.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MyHomePageStore? store;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    store ??= Provider.of<MyHomePageStore>(context);
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
        child: const Icon(Icons.lightbulb_outline),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => openMenuBottomSheet(context),
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => showSearch(
                context: context,
                delegate: CustomSearchDelegate(store),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Container(
                margin: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _launchURL(
                          'https://github.com/ibhavikmakwana/FlutterPlayground',
                        );
                      },
                      icon: SvgPicture.asset(Assets.icGithub),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
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
              child: _buildExampleItemsWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExampleItemsWidget() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) => ExampleNameItem(
        exampleNames: store!.exampleList[index],
      ),
      itemCount: store!.exampleList.length,
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
    );
  }

  //Change Dark/Light Theme
  void onFabPressed() => Provider.of<ThemeStore>(context, listen: false).changeTheme();

  //Open Menu Bottom Sheet
  void openMenuBottomSheet(BuildContext context) {
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
                title: const Text('About'),
                onTap: () => openAboutDialog(context),
              ),
              const Divider(),
              ListTile(
                title: const Text('Open-source licenses'),
                onTap: () => navigateToOpnSourceLicence(),
              ),
              const Divider(),
              ListTile(
                title: const Text('Privacy Policy'),
                onTap: () => _launchURL(
                  'https://flutter-playground.flycricket.io/privacy.html',
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void openAboutDialog(BuildContext context) {
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

  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
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
