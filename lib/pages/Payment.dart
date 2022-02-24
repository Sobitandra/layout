import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Card Number",
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff0f2154),
                  fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "42424242424242"
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height: 110,
                  width: 160,
                  child: Column(
                    children: [
                      Text("Expiration Date",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff0f2154),
                            fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "12/22"
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 110,
                  width: 160,
                  child: Column(
                    children: [
                      Text("Security Code",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff0f2154),
                            fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "2342"
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
