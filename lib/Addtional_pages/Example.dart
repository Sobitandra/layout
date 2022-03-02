import 'package:flutter/material.dart';

import '../widget/Products.dart';
import 'chatpage.dart';

enum ordertype { small, medium, large, four }

class example extends StatefulWidget {
  const example({Key? key}) : super(key: key);

  @override
  _exampleState createState() => _exampleState();
}
class _exampleState extends State<example> {
  final products = Products();

  bool Firstvalue1 = false;
  bool Firstvalue2 = false;
  ordertype? selected = ordertype.small;

  int currentIndex = 0;
  void onTap (int index){
  setState(() {
  currentIndex = index;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: chatpage(),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey.shade600,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.message),
            label: 'Message'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: 'Group'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded),
                label: 'Profile'
            ),
          ]),
    );
  }
}
