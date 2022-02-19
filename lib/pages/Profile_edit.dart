import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Text("Edit Profile"),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 25,),
                  // Image.asset('assets/images/profile.jpg')
                  Container(
                      alignment: Alignment.center,
                      child: Icon(Icons.account_circle,color: Colors.orange,size: 200,)),
                  Container(
                    width: 380,
                    padding: EdgeInsets.all(9),
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
                    padding: EdgeInsets.all(9),
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
                    padding: EdgeInsets.all(9),
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
                    padding: EdgeInsets.all(9),
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
                    padding: EdgeInsets.all(9),
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
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          style: TextButton.styleFrom(primary: Colors.black),
                          onPressed: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=> Forgotpage()));
                          }, child: const Text("Forgot password?"))),
                  Container(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.blue),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> My_Profile()));
                        }, child: const Text("Update",style: TextStyle(fontSize: 20),)),
                  ),
                ],
              ),
              Positioned(
                top: 165,
                  left: 255,
                  child: Icon(Icons.image,color: Colors.redAccent,size: 32,))

            ],
          )
        ),
      ),
    );
  }
}
