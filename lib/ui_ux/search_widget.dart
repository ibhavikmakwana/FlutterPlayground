import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_playground/ExampleNameItem.dart';
import 'package:flutter_playground/ui_ux/home_page/my_home_page_store.dart';

class CustomSearchDelegate extends SearchDelegate {
  final MyHomePageStore? store;

  CustomSearchDelegate(this.store);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          store!.searchResult.clear();
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) => buildListView();

  Observer buildListView() {
    if (query.isNotEmpty) {
      store!.search(query);
    } else {
      store!.searchResult.clear();
    }
    return Observer(
      builder: (context) => store!.searchResult.isNotEmpty
          ? ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              itemCount: store!.searchResult.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => ExampleNameItem(
                exampleNames: store!.searchResult[index],
              ),
            )
          : Container(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) => Container();
}
