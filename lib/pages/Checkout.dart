import 'package:flutter/material.dart';

import 'Address.dart';
import 'Payment.dart';
import 'Shipping.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout>  with SingleTickerProviderStateMixin {

late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3 , vsync: this,);
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Checkout"),
          centerTitle: true,
          backgroundColor: const Color(0xfff56b25),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  color: Color(0xfff3f3f3),
                  child: TabBar(
                    controller: _tabController,
                    unselectedLabelColor: Colors.black,
                      indicator: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(25)
                  ),
                      tabs: [
                        Container(
                          alignment: Alignment.center,
                          width:95,
                          height: 42,
                            child: Text("Address"),),
                        Container(
                          alignment: Alignment.center,
                          width:95,
                          height: 42,
                          child: Text("Shipping"),),
                        Container(
                          alignment: Alignment.center,
                          width:95,
                          height: 42,
                          child: Text("Payment")),
                      ]),
                ),
                Container(
                  width: double.maxFinite,
                   height: 630,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      Address(),
                      Shipping(),
                      Payment()
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 320,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                      onPressed: () => _tabController.animateTo((_tabController.index + 1) % 3),
                      child: const Text("Continue")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
