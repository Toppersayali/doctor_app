import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final imageurl =
      "https://media.istockphoto.com/id/693339408/photo/ganesha.jpg?s=612x612&w=0&k=20&c=5kiZdXapYgNUVqkd3ekr9k7B61SOzNIaSQQQkUqgYzw=";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: const Text("Sayali Khandare"),
                accountEmail: const Text("sayalisayali924@gmail.com"),
                margin: EdgeInsets.zero,
                decoration: const BoxDecoration(color: Colors.blue),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imageurl)),
              )),
          const ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.black,
            ),
            title: Text(
              "Email",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
