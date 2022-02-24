import 'package:flutter/material.dart';

class Wallet_Topup extends StatefulWidget {
  const Wallet_Topup({Key? key}) : super(key: key);

  @override
  _Wallet_TopupState createState() => _Wallet_TopupState();
}

class _Wallet_TopupState extends State<Wallet_Topup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Color(0xff1c50ea),
              width: 350,
              height: 175,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Balance",style: TextStyle(fontSize: 25,color: Colors.white),),
                  SizedBox(height: 10,),
                  Text('\$1200.00',style: TextStyle(fontSize: 38,color: Colors.white),)
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 360,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Color(0xffececec),
                  hintText: 'Enter Amount'
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              height: 50,
              width: 200,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.add_circle_outline),
                      Text("ADD")
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
