// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CatalogStore on _CatalogStore, Store {
  Computed<dynamic> _$cartTotalComputed;

  @override
  dynamic get cartTotal =>
      (_$cartTotalComputed ??= Computed<dynamic>(() => super.cartTotal)).value;

  final _$colorsAtom = Atom(name: '_CatalogStore.colors');

  @override
  List<ColorItem> get colors {
    _$colorsAtom.context.enforceReadPolicy(_$colorsAtom);
    _$colorsAtom.reportObserved();
    return super.colors;
  }

  @override
  set colors(List<ColorItem> value) {
    _$colorsAtom.context.conditionallyRunInAction(() {
      super.colors = value;
      _$colorsAtom.reportChanged();
    }, _$colorsAtom, name: '${_$colorsAtom.name}_set');
  }

  final _$cartItemsAtom = Atom(name: '_CatalogStore.cartItems');

  @override
  ObservableList<ColorItem> get cartItems {
    _$cartItemsAtom.context.enforceReadPolicy(_$cartItemsAtom);
    _$cartItemsAtom.reportObserved();
    return super.cartItems;
  }

  @override
  set cartItems(ObservableList<ColorItem> value) {
    _$cartItemsAtom.context.conditionallyRunInAction(() {
      super.cartItems = value;
      _$cartItemsAtom.reportChanged();
    }, _$cartItemsAtom, name: '${_$cartItemsAtom.name}_set');
  }

  final _$_CatalogStoreActionController =
      ActionController(name: '_CatalogStore');

  @override
  dynamic addToCard(
      dynamic colorCode, dynamic name, dynamic price, dynamic index) {
    final _$actionInfo = _$_CatalogStoreActionController.startAction();
    try {
      return super.addToCard(colorCode, name, price, index);
    } finally {
      _$_CatalogStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic delete(dynamic index) {
    final _$actionInfo = _$_CatalogStoreActionController.startAction();
    try {
      return super.delete(index);
    } finally {
      _$_CatalogStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clear() {
    final _$actionInfo = _$_CatalogStoreActionController.startAction();
    try {
      return super.clear();
    } finally {
      _$_CatalogStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'colors: ${colors.toString()},cartItems: ${cartItems.toString()},cartTotal: ${cartTotal.toString()}';
    return '{$string}';
  }
}
