// import 'package:velocity_x/velocity_x.dart';

// import 'package:flutter_application_1/models/cart.dart';
// import 'package:flutter_application_1/models/catalog.dart';

// class MyStore extends VxStore {
//   CatalogModel catalog;
//   CartModel cart;

//   MyStore(
//     this.catalog,
//     this.cart,
//   ) {
//     catalog = CatalogModel();
//     cart = CartModel(_catalog: null);
//     cart.catalog = catalog;
//   }
// }
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/models/catalog.dart';

class MyStore extends VxStore {
  CatalogModel catalog;
  CartModel cart;

  MyStore(
    this.catalog,
    this.cart,
  ) {
    cart.catalog = catalog;
  }
}
