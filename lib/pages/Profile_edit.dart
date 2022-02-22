import 'package:flutter/material.dart';

import 'Forgotpassword.dart';
import 'myprofile.dart';

class Profile_page extends StatefulWidget {
  const Profile_page({Key? key}) : super(key: key);

  @override
  _Profile_pageState createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xfff56b25),
          centerTitle: true,
          title: const Text("Edit Profile"),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 756,
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
                    const SizedBox(height: 20,),
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
                    SizedBox(height: 15,),
                    Text("Willieam Jones",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    SizedBox(height: 15,),
                    Container(
                      width: 380,
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon( Icons.account_box),
                            labelText: 'First name',
                            hintText: 'First name'
                        ),
                      ),
                    ),
                    Container(
                      width: 380,
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon( Icons.account_box),
                            labelText: 'Last name',
                            hintText: 'Last name'
                        ),
                      ),
                    ),
                    Container(
                      width: 380,
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon( Icons.email_outlined),
                            labelText: 'Email',
                            hintText: 'example@gmail.com'
                        ),
                      ),
                    ),
                    Container(
                      width: 380,
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon( Icons.directions_car),
                            labelText: 'Delivery town/City',
                            hintText: 'Your address'
                        ),
                      ),
                    ),
                    Container(
                      width: 380,
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon( Icons.mobile_friendly),
                            labelText: 'Mobile number',
                            hintText: 'Your phone no.'
                        ),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 2),
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            style: TextButton.styleFrom(primary: Colors.black),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Forgotpage()));
                            }, child: const Text("Forgot password?",style: TextStyle(color: Colors.blueAccent),))),
                    Container(
                      width: 360,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const My_Profile()));
                          }, child: const Text("UPDATE",style: TextStyle(fontSize: 20),)),
                    ),
                  ],
                ),
                Positioned(
                  top: 150,
                    left: 255,
                    child: Container(
                      width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Color(0xfff56b25),
                          shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 1.0,
                                spreadRadius: 0.0,
                                offset: Offset(0.0, 0.0,), // shadow direction: bottom right
                              )
                            ]
                        ),
                        child: const Icon(Icons.image,color: Colors.white,size: 20,)))

              ],
            ),
          )
        ),
      ),
    );
  }
}
