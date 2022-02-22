import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'Forgotpassword.dart';
import 'Sign_up.dart';
import 'mainhomescreen.dart';

class login1 extends StatefulWidget {
  const login1({Key? key}) : super(key: key);

  @override
  _login1State createState() => _login1State();
}

class _login1State extends State<login1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back1.png"),
              fit: BoxFit.cover,
            ),
          ),
          // color: Colors.orange,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Column(
                    children:[
                      SizedBox(height: 100,),
                      Container(
                          padding: const EdgeInsets.all(2),
                          child: const Text("LOG IN",style: const TextStyle(fontSize: 45,color: Colors.white),)),
                      const Text("Log in to your account",style: TextStyle(fontSize: 18,color: Colors.white),),
                      const SizedBox(height: 50,),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all( Radius.circular(20),),
                          color: Colors.white,
                          boxShadow: [
                          BoxShadow(
                          color: Colors.black45,
                          blurRadius: 1.0,
                          spreadRadius: 0.0,
                          offset: Offset(0.0, 0.0,), // shadow direction: bottom right
                        )
                          ]
                        ),
                        width: 370,
                        height: 380,
                          child: Column(
                            children: [
                              SizedBox(height: 30,),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                      prefixIcon: Icon(
                                        Icons.account_box,),
                                    labelText: 'User Name',
                                    hintText: 'Your name'
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon( Icons.lock_outline),
                                      labelText: 'Account password',
                                      hintText: 'Password'
                                  ),
                                ),
                              ),
                              Container(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                      style: TextButton.styleFrom(primary: Colors.black),
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Forgotpage()));
                                      },
                                      child: Text("Forgot password?",style: TextStyle(fontSize: 17),))),
                              SizedBox(height: 12,),
                              Container(
                                width: 350,
                                height: 55,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Mainhomepage()));
                                    }, child: const Text("LOG IN",style: TextStyle(fontSize: 20),)),
                              ),
                            ],
                          ),
                      ),

                    ],
                  ),
                ),
                Positioned(
                  top: 800,
                  left: 5,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(80),),
                      color: Colors.blueAccent,
                    ),
                    width: 400,
                    height: 150,

                      alignment: Alignment.topCenter,
                      child: TextButton(
                          style: TextButton.styleFrom(primary: Colors.white),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Sign_up()));
                          }, child: Text("Don't you have an accont?Sign up Now!",style: TextStyle(fontSize: 15,),))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
