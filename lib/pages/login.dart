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
          color: Colors.orange,
          height: 844,
          child: Center(
            child: Stack(
              children: [
                SizedBox(height: 100,),
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Column(
                    children:[
                      Container(
                          padding: const EdgeInsets.all(5),
                          child: const Text("Login",style: const TextStyle(fontSize: 50),)),
                      const Text("Login to your account"),
                      const SizedBox(height: 10,),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all( Radius.circular(20),),
                          color: Colors.white,
                        ),
                        width: 370,
                        height: 350,
                          child: Column(
                            children: [
                              SizedBox(height: 50,),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                      prefixIcon: Icon( Icons.account_box),
                                    labelText: 'User name',
                                    hintText: 'Your name'
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15,),
                              Container(
                                padding: EdgeInsets.all(12),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon( Icons.lock_outline),
                                      labelText: 'Account password',
                                      hintText: 'Enter password'
                                  ),
                                ),
                              ),
                              Container(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                      style: TextButton.styleFrom(primary: Colors.black),
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Forgotpage()));
                                      }, child: const Text("Forgot password?"))),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Mainhomepage()));
                                  }, child: const Text("Login")),
                            ],
                          ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 220,),
                Positioned(
                  top: 800,
                  left: 5,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(55),),
                      color: Colors.blue,
                    ),
                    width: 400,
                    height: 150,

                      alignment: Alignment.topCenter,
                      child: TextButton(
                          style: TextButton.styleFrom(primary: Colors.white),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Sign_up()));
                          }, child: Text("Don't you have an accont?Sign up Now!",style: TextStyle(fontSize: 18),))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
