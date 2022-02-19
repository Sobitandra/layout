import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Profile_edit.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Image.asset('assets/images/forgotpassimage.png'),
              ),
              SizedBox(height: 20,),
              Text("Verification Code",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                width: 300,
                  child: Text("OTP has been send to your mobile number please verfy",style: TextStyle(fontSize: 18,),)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 60,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: ''
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 60,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: ''
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 60,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: ''
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 60,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: ''
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 120,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile_page()));
                    }, child: const Text("Confirm")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
