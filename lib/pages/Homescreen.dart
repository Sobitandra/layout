import 'package:flutter/material.dart';
import 'intropage2.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
        color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 100,),
              Container(
                child: Image.asset('assets/images/logo.jpg'),
              height: 380,
                width: 380,
              ),
              const Text("All Services1",style: TextStyle(fontSize: 30),),
              const SizedBox(height: 10,),
              SizedBox(height: 25,),
              Container(
                width: 300,
                alignment: Alignment.center,
                decoration: const BoxDecoration(shape: BoxShape.rectangle),
                  child: const Text("get all services get all services get all services get all services "
                      "get all services get all services",style: TextStyle(fontSize: 20),)),
              SizedBox(height: 100,),
              Container(
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Intropage2()),);
                    },
                    child: const Text("Next",style: TextStyle(fontSize: 25,),)),
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const login1()),);
                }, child: const Text("Skip",style: TextStyle(color: Colors.black),),

              )
            ],
          )
              
        ),
    );
  }
}
