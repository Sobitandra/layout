import 'package:flutter/material.dart';

class mydrawer extends StatelessWidget {
  const mydrawer({Key? key}) : super(key: key);

  final imageurl= "https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: const Text("kartik"),
              accountEmail: const Text("kartikghosh@770gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageurl),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text("home"),
          ),
          const ListTile(
            leading: Icon(Icons.mail),
            title: Text("Gmail"),
          ),
          const ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text("contact"),
          )
        ],
      ),
    );
  }
}

