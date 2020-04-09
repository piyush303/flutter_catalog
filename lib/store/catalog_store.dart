import 'package:mobx/mobx.dart';
import 'dart:ui';

import 'package:flutter_catalog/store/color.dart';

part 'catalog_store.g.dart';

class CatalogStore = _CatalogStore with _$CatalogStore;

abstract class _CatalogStore with Store {
  @observable
  List<ColorItem> colors = [
    ColorItem(Color(0xFF800000), 'Maroon', 10),
    ColorItem(Color(0xFFFFA500), 'Orange', 5),
    ColorItem(Color(0xFF808000), 'Olive', 20),
    ColorItem(Color(0xFF00FF00), 'Lime', 12),
    ColorItem(Color(0xFF00FFFF), 'Aqua', 34),
    ColorItem(Color(0xFF9932CC), 'Dark Orchid', 23),
    ColorItem(Color(0xFFFF1493), 'Deep Pink', 32),
    ColorItem(Color(0xFFD2B48C), 'Tan', 12),
  ];

  @observable
  ObservableList<ColorItem> cartItems = ObservableList<ColorItem>();

  @computed
  get cartTotal =>
      cartItems.fold(0, (preValue, ele) => preValue + ele.price);


  @action
  addToCard(colorCode, name, price, index) {
    final element = ColorItem(colorCode, name, price);
    cartItems.add(element);
  }

  @action
  delete(index) {
    cartItems.removeAt(index);
  }

  @action
  clear() {
    cartItems.clear();
  }
}