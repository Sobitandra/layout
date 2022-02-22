import 'package:flutter/material.dart';

class Shoping_cart extends StatefulWidget {
  const Shoping_cart({Key? key}) : super(key: key);

  @override
  _Shoping_cartState createState() => _Shoping_cartState();
}

class _Shoping_cartState extends State<Shoping_cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Shoping Cart"),
        ),
      ),
    );
  }
}
