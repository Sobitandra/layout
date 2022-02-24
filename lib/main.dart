import 'package:layout/pages/Checkout.dart';
import 'package:layout/pages/Delivary_Details.dart';
import 'package:layout/pages/MY_Wallet.dart';
import 'package:layout/pages/NavigationBarButton.dart';
import 'package:layout/pages/PRO.dart';
import 'package:layout/pages/Profile_edit.dart';
import 'package:layout/pages/Shipping.dart';
import 'package:layout/pages/Splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:layout/pages/mainhomescreen.dart';
import 'package:layout/pages/mainintropage.dart';
import 'package:layout/pages/myprofile.dart';
import 'package:layout/pages/verification.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      home: Delivary_Details(),
    );
  }
}
