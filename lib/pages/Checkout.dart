import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
                  color: Colors.red,
                  child: const TabBar(
                    indicatorPadding: EdgeInsets.all(10),
                      indicatorColor: Colors.blueAccent,
                      labelPadding: EdgeInsets.all(5),
                      tabs: [
                        Text("Adress"),
                        const Text("Shiping"),
                        Text("Payment")
                      ]),
                ),
                Container(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height,
                  child: const TabBarView(
                    children: [
                      const Text("Adress"),
                      const Text("Shiping"),
                      const Text("Payment")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
