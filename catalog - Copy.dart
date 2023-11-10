import 'dart:convert';
// class CatalogModel {
//   static List<Item> items = [];

//   static Object? get id => null;

//   static String? get source => null; // Initialize the items list.
//   static Item? getById(int id) =>; final item=items.firstWhere((element) => element.id == id, orElse: ()=> Item.fromJson(source!));
//   static Item getByPosition(int pos) => items[pos];

//   toMap() {}

//   static CatalogModel fromMap(Map<String, dynamic> map) {}
// }

class Item {
  final int id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    // ignore: unnecessary_null_comparison
    if (map == null) {
      throw ArgumentError("Map cannot be null when creating an Item.");
    }
    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));
  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}

class CatalogModel {
  static List<Item> items = [];

  static Item? getById(int id) {
    final item = items.firstWhere(
      (element) => element.id == id,
      orElse: () => Item(
        id: 0,
        name: "Default Item",
        desc: "This is a default item description.",
        price: "0",
        color: "#000000",
        image: "default_image.jpg",
      ),
    );
    return item;
  }

  static Item getByPosition(int pos) {
    return items[pos];
  }

  static CatalogModel fromMap(Map<String, dynamic> map) {
    final List<dynamic> itemList = map['items'];
    items = itemList.map((itemMap) => Item.fromMap(itemMap)).toList();
    return CatalogModel();
  }
}
