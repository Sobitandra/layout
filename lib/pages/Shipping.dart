import 'package:flutter/material.dart';

class Shipping extends StatefulWidget {
  const Shipping({Key? key}) : super(key: key);

  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {

  bool Firstvalue = false;
  bool Firstvalue1 = false;
  bool Firstvalue2 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20,top: 30),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      value: Firstvalue, onChanged: (value) {
                      setState(() {
                        Firstvalue=value!;
                      });
                    },

                    ),
                    Text("Flat Rate (\$10)",style: TextStyle(fontSize: 20,color: Color(0xff0f2154),fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                color: Color(0xfff3f3f3),
                height: 2,
                width: double.maxFinite,
              ),
              Container(
                padding: EdgeInsets.only(left: 20,top: 10),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      value: Firstvalue1, onChanged: (value) {
                      setState(() {
                        Firstvalue1=value!;
                      });
                    },
                    ),
                    Text("Free Shipping (\$10)",style: TextStyle(fontSize: 20,color: Color(0xff0f2154),fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                color: Color(0xfff3f3f3),
                height: 2,
                width: double.maxFinite,
              ),
              Container(
                padding: EdgeInsets.only(left: 20,top: 10),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      value: Firstvalue2, onChanged: (value) {
                      setState(() {
                        Firstvalue2=value!;
                      });
                    },

                    ),
                    const Text("Local Pickup (\$20)",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff0f2154),
                          fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
