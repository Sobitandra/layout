import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CategoryPage.dart';
import 'Checkout.dart';
import 'MY_Wallet.dart';
import 'Profile_edit.dart';
import 'Shoping_cart.dart';
import 'Store_page.dart';
import 'login.dart';
import 'mainhomescreen.dart';
import 'mainintropage.dart';
import 'myprofile.dart';

class Bottumnavigation extends StatefulWidget {
  const Bottumnavigation({Key? key}) : super(key: key);

  @override
  _BottumnavigationState createState() => _BottumnavigationState();
}

class _BottumnavigationState extends State<Bottumnavigation> {

  List pages = [
    Mainhomepage(),
    CategoryPage(),
    Store_Pages(),
    Shoping_cart(),
    Mywallet(),
  ];
  int currentIndex=0;


  void ontap(int index) {
    setState((){
      currentIndex = index;

    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        body: Center(
          child: pages.elementAt(currentIndex),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: BottomNavigationBar(

            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            onTap: ontap,
            currentIndex: currentIndex,
            items: const <BottomNavigationBarItem>[

              BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.black,),
                label: 'Home'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list_alt),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.store),
                label: 'Stores',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart),
                label: 'Mylist',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
