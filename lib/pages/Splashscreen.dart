import 'dart:async';
import 'package:flutter/material.dart';
import 'Homescreen.dart';
import 'mainintropage.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    Mainintro()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 140,),
            Container(

              alignment: Alignment.center,
              height: 380,
              width: 380,
              child: (
                  Image.asset('assets/images/logo.jpg')
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text("welcome to app",style: TextStyle(fontSize: 25),)
            ),
          ],
        ),
      ),
    );
  }

}
final imageurl="https://cdn.pixabay.com/photo/2016/11/07/13/04/yoga-1805784_960_720.png";