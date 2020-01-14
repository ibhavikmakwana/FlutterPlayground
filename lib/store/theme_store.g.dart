// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeStore on _ThemeStore, Store {
  final _$themeModeAtom = Atom(name: '_ThemeStore.themeMode');

  @override
  ThemeMode get themeMode {
    _$themeModeAtom.context.enforceReadPolicy(_$themeModeAtom);
    _$themeModeAtom.reportObserved();
    return super.themeMode;
  }

  @override
  set themeMode(ThemeMode value) {
    _$themeModeAtom.context.conditionallyRunInAction(() {
      super.themeMode = value;
      _$themeModeAtom.reportChanged();
    }, _$themeModeAtom, name: '${_$themeModeAtom.name}_set');
  }

  final _$_ThemeStoreActionController = ActionController(name: '_ThemeStore');

  @override
  dynamic changeTheme() {
    final _$actionInfo = _$_ThemeStoreActionController.startAction();
    try {
      return super.changeTheme();
    } finally {
      _$_ThemeStoreActionController.endAction(_$actionInfo);
    }
  }
}
