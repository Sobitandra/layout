import 'package:flutter/material.dart';
import 'package:layout/pages/wallet_Topup.dart';

import 'Transaction.dart';

class Mywallet extends StatefulWidget {
  const Mywallet({Key? key}) : super(key: key);

  @override
  _MywalletState createState() => _MywalletState();
}

class _MywalletState extends State<Mywallet> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My Wallet"),
          centerTitle: true,
          backgroundColor: const Color(0xfff56b25),
        ),
        body: SingleChildScrollView(
          child: Container(
        child: Column(
        children: [
        Container(
        color: Color(0xfff3f3f3),
        child: TabBar(
            unselectedLabelColor: Colors.black,
            indicator: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.blueAccent,
            ),
            tabs: [
              Container(
                alignment: Alignment.center,
                width:100,
                height: 60,
                child: Text("Wallet Topup"),),
              Text("Transaction"),
            ]),
      ),
      Container(
        width: double.maxFinite,
        height: 630,
        child: const TabBarView(
          children: [
            Wallet_Topup(),
            Transaction(),
          ],
        ),
      ),
      ],
    ),
    ),
        ),
      ),
    );
  }
}