import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/models/catalog.dart';

class CartModel {
  // catalog field
  late CatalogModel _catalog;
  CartModel({
    required CatalogModel catalog,
  }) : _catalog = catalog;

  // Collection of IDs - store IDs of each item
  final List<int> _itemIds = [];

  // Get Catalog
  // ignore: unnecessary_getters_setters
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item?> get items =>
      _itemIds.map((id) => CatalogModel.getById(id)).toList();

  // Get total price
  num get totalPrice => items.fold(0, (total, current) => total);

  toMap() {}

  static CartModel fromMap(Map<String, dynamic> map) {
    // Implement fromMap if needed
    return CartModel(catalog: CatalogModel());
  }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store!.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store!.cart._itemIds.remove(item.id);
  }
}
