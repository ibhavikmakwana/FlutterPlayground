import 'package:flutter/material.dart';
import 'package:flutter_playground/store/theme_store.dart';
import 'package:flutter_playground/values/assets.dart';
import 'package:flutter_playground/values/imports.dart';
import 'package:provider/provider.dart';

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
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
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

  void onFabPressed() =>
      Provider.of<ThemeStore>(context, listen: false).changeTheme();
}
