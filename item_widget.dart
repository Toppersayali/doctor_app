// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget(
      {required Key key, required this.item, required Item product})
      : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: const TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
