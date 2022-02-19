import 'dart:ui';
import 'Splashscreen.dart';
import 'package:flutter/material.dart';

class Pass_page extends StatefulWidget {
  const Pass_page({Key? key}) : super(key: key);

  @override
  State<Pass_page> createState() => _Pass_pageState();
}
class _Pass_pageState extends State<Pass_page> {

  String name ="";
  bool change=false;
  final _formkey =GlobalKey<FormState>();

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  movetopass(BuildContext context) async{
    if(_formkey.currentState!.validate()) {
      setState(() {
        change = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Home_Page()));
      setState(() {
        change = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.green,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 40,),
                    Container(
                      alignment: Alignment.center,
                      child: Container(
                        width: 250,
                        height: 30,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 4.0,
                              spreadRadius: 0.0,
                              offset: Offset(1.0, 1.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        child: Text("subscribed $name",style: const TextStyle(
                            fontSize: 25
                        ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 80),
                    Container(
                      height: 320,
                      width: 320,
                      color: Colors.white,
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(22),
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                    hintText: 'User Name'
                                ),
                                validator: (value){
                                  if(value==null || value.isEmpty){
                                    return"Username cannot be Empty";
                                  }
                                  return null;
                                },
                                onChanged:(value){
                                  name=value;
                                  setState(() {
                                  });
                                } ,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(22),
                              color: Colors.white,
                              child: TextFormField(
                                controller: password,
                                // keyboardType: TextInputType.text,
                                obscureText: true,
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  hintText: 'Password',
                                ),
                                validator: (value){
                                  if(value==null || value.isEmpty){
                                    return"Password cannot be empty";
                                  }
                                  if(value==null || value.length<6){
                                    return"Password must contain at least 6 characters";
                                  }
                                  return null;
                                },
                              ),

                            ),
                            Container(
                              padding: const EdgeInsets.all(22),
                              color: Colors.white,
                              child: TextFormField(
                                controller: confirmpassword,
                                // keyboardType: TextInputType.text,
                                obscureText: true,
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  hintText: 'Confirm Password',
                                ),
                                validator: (value){
                                  if(value==null || value.isEmpty){
                                    return"Username cannot be Empty";
                                  }
                                  return null;
                                },
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Container(
                      child: const Text("Discription About App",
                        style:TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ) ,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 210,
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      spreadRadius: 0.0,
                      offset: Offset(1.0, 1.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: const Icon(Icons.phone_android,color: Colors.black,
                  size: 50,),
              ),),
            Positioned(
              top: 450,
              left: 210,
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
                child: InkWell(
                  // splashColor: Colors.red,
                  onTap:  ()=> movetopass(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 40,
                    width: 80,
                    child:change?Icon(Icons.ac_unit,size: 40,): Icon(Icons.arrow_right_alt,size: 40,),
                  ),
                  // onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=> const Home_Page()));},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
