import 'package:flutter/material.dart';

import 'ContactTAB.dart';
import 'ProductTAB.dart';
import 'ReviewPage.dart';

class TabBarNav extends StatefulWidget {
  const TabBarNav({Key? key}) : super(key: key);

  @override
  _TabBarNavState createState() => _TabBarNavState();
}

class _TabBarNavState extends State<TabBarNav> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tabs Demo'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
                Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ProductTAb(),
              Review(),
              ContactTab(),
            ],
          ),
        ),
      ),
    );
  }
}
