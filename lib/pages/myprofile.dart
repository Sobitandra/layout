import 'package:flutter/material.dart';

class My_Profile extends StatefulWidget {
  const My_Profile({Key? key}) : super(key: key);

  @override
  _My_ProfileState createState() => _My_ProfileState();
}

class _My_ProfileState extends State<My_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text("My Profile"),
      ),
      body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20,),
                  // Image.asset('assets/images/profile.jpg')
                  Container(
                      alignment: Alignment.center,
                      child: Icon(Icons.account_circle,color: Colors.orange,size: 200,)),
                  Text("Welcome",style: TextStyle(fontSize: 20),),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        TextButton(onPressed: (){}, child: Text("City road bhavani nagar",textScaleFactor: 1.3,style: TextStyle(color: Colors.black),)),
                        SizedBox(width: 90,),
                        Icon(Icons.edit),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Row(
                      children: [
                        Icon(Icons.person),
                        TextButton(onPressed: (){}, child: Text("Login",textScaleFactor: 1.3,style: TextStyle(color: Colors.black),)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        TextButton(onPressed: (){}, child: Text("My adress",textScaleFactor: 1.3,style: TextStyle(color: Colors.black),)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Row(
                      children: [
                        Icon(Icons.sticky_note_2_rounded),
                        TextButton(onPressed: (){}, child: Text("My order",textScaleFactor: 1.3,style: TextStyle(color: Colors.black),)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Row(
                      children: [
                        Icon(Icons.shopping_cart),
                        TextButton(onPressed: (){}, child: Text("My cart",textScaleFactor: 1.3,style: TextStyle(color: Colors.black),)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Row(
                      children: [
                        Icon(Icons.account_balance_wallet),
                        TextButton(onPressed: (){}, child: Text("My wallet",textScaleFactor: 1.3,style: TextStyle(color: Colors.black),)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Row(
                      children: [
                        Icon(Icons.notifications_active_sharp),
                        TextButton(onPressed: (){}, child: Text("My notifaction",textScaleFactor: 1.3,style: TextStyle(color: Colors.black),)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Row(
                      children: [
                        Icon(Icons.share),
                        TextButton(onPressed: (){}, child: Text("Refer Your Friends",textScaleFactor: 1.3,style: TextStyle(color: Colors.black),)),
                        SizedBox(width: 130,),
                        Container(
                            width: 20,
                            height: 20,
                            child: Image.asset('assets/images/coin.ico',)),
                      ],
                    ),
                  ),
                ],
              ),
              // Positioned(
              //     top: 165,
              //     left: 255,
              //     child: Icon(Icons.image,color: Colors.redAccent,size: 32,))

            ],
          )
      ),
    );
  }
}
