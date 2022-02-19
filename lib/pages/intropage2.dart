import 'package:flutter/material.dart';

import 'intropage3.dart';
import 'login.dart';
class Intropage2 extends StatefulWidget {
  const Intropage2({Key? key}) : super(key: key);

  @override
  _Intropage2State createState() => _Intropage2State();
}

class _Intropage2State extends State<Intropage2> {
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
                  child: Image.asset('assets/images/service11.jpg'),
                height: 380,
                width: 380,
              ),
              const Text("All Services2",style: TextStyle(fontSize: 30),),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> intropage3()),);
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


var image="https://cdn.pixabay.com/photo/2015/11/03/08/56/service-1019821_1280.jpg";
