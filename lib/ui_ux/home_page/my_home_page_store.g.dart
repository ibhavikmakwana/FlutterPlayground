// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_home_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyHomePageStore on _MyHomePageStore, Store {
  final _$exampleListAtom = Atom(name: '_MyHomePageStore.exampleList');

  @override
  ObservableList<ExampleNames> get exampleList {
    _$exampleListAtom.context.enforceReadPolicy(_$exampleListAtom);
    _$exampleListAtom.reportObserved();
    return super.exampleList;
  }

  @override
  set exampleList(ObservableList<ExampleNames> value) {
    _$exampleListAtom.context.conditionallyRunInAction(() {
      super.exampleList = value;
      _$exampleListAtom.reportChanged();
    }, _$exampleListAtom, name: '${_$exampleListAtom.name}_set');
  }

  final _$_MyHomePageStoreActionController =
      ActionController(name: '_MyHomePageStore');

  @override
  void initList() {
    final _$actionInfo = _$_MyHomePageStoreActionController.startAction();
    try {
      return super.initList();
    } finally {
      _$_MyHomePageStoreActionController.endAction(_$actionInfo);
    }
  }
}
