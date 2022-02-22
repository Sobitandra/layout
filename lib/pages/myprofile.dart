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
        backgroundColor: const Color(0xfff56b25),
        centerTitle: true,
        title: Text("My Profile"),
      ),
      body: SingleChildScrollView(
          child: Container(
            height: 945,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/back5.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    // Image.asset('assets/images/profile.jpg')
                    Container(
                        width: 180,
                        height: 180,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xfff56b25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 0.0,
                                spreadRadius: 5.0,
                                offset: const Offset(0.0, 0.0,), // shadow direction: bottom right
                              )
                            ]
                        ),
                        alignment: Alignment.center,
                        child: const Icon(Icons.person_sharp,color: Colors.white ,size: 152,)),
                    SizedBox(height: 12,),
                    Text("William Jones",style: TextStyle(fontSize: 30),),
                    SizedBox(height: 18,),
                    Container(
                      color: Colors.black12,
                      alignment: Alignment.centerLeft,
                      width: 350,
                        height: 50,
                        child: Text("     Welcome",style: TextStyle(fontSize: 20),)),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined,size: 30,),
                          TextButton(onPressed: (){}, child: Text("City Road Bhavani nagar Jaipur",textScaleFactor: 1.4,style: TextStyle(color: Colors.black),)),
                          SizedBox(width: 10,),
                          Icon(Icons.edit,),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Row(
                        children: [
                          Icon(Icons.person,size: 30,),
                          TextButton(onPressed: (){}, child: Text("Login",textScaleFactor: 1.5,style: TextStyle(color: Colors.black),)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Row(
                        children: [
                          Icon(Icons.location_on,size: 30,),
                          TextButton(onPressed: (){}, child: Text("My adress",textScaleFactor: 1.5,style: TextStyle(color: Colors.black),)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Row(
                        children: [
                          Icon(Icons.sticky_note_2_rounded,size: 30,),
                          TextButton(onPressed: (){}, child: Text("My order",textScaleFactor: 1.5,style: TextStyle(color: Colors.black),)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Row(
                        children: [
                          Icon(Icons.shopping_cart,size: 30,),
                          TextButton(onPressed: (){}, child: Text("My cart",textScaleFactor: 1.5,style: TextStyle(color: Colors.black),)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Row(
                        children: [
                          Icon(Icons.account_balance_wallet,size: 30,),
                          TextButton(onPressed: (){}, child: Text("My wallet",textScaleFactor: 1.3,style: TextStyle(color: Colors.black),)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Row(
                        children: [
                          Icon(Icons.notifications_active_sharp,size: 30,),
                          TextButton(onPressed: (){}, child: Text("My notifaction",textScaleFactor: 1.3,style: TextStyle(color: Colors.black),)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Row(
                        children: [
                          Icon(Icons.share,size: 30,),
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
            ),
          )
      ),
    );
  }
}
