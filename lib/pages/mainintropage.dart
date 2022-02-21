import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Mainintro extends StatefulWidget {
  const Mainintro({Key? key}) : super(key: key);

  @override
  _MainintroState createState() => _MainintroState();
}

class _MainintroState extends State<Mainintro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 60,),
                      Container(
                        child: Image.asset('assets/images/logo.jpg'),
                        height: 380,
                        width: 380,
                      ),
                      const Text("All Services1",style: TextStyle(fontSize: 30),),
                      const SizedBox(height: 10,),
                      SizedBox(height: 20,),
                      Container(
                          width: 300,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(shape: BoxShape.rectangle),
                          child: const Text("get all services get all services get all services get all services "
                              "get all services get all services",style: TextStyle(fontSize: 20),)),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child:Column(
                    children: [
                      const SizedBox(height: 60,),
                      Container(
                        child: Image.asset('assets/images/shopingcart.jpg'),
                        height: 380,
                        width: 380,
                      ),
                      const Text("All Services2",style: TextStyle(fontSize: 30),),
                      const SizedBox(height: 10,),
                      SizedBox(height: 20,),
                      Container(
                          width: 300,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(shape: BoxShape.rectangle),
                          child: const Text("get all services get all services get all services get all services "
                              "get all services get all services",style: TextStyle(fontSize: 20),)),
                    ],
                  ) ,
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 60,),
                      Container(
                        child: Image.asset('assets/images/service11.jpg'),
                        height: 380,
                        width: 380,
                      ),
                      const Text("All Services3",style: TextStyle(fontSize: 30),),
                      const SizedBox(height: 10,),
                      SizedBox(height: 20,),
                      Container(
                          width: 300,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(shape: BoxShape.rectangle),
                          child: const Text("get all services get all services get all services get all services "
                              "get all services get all services",style: TextStyle(fontSize: 20),)),
                    ],
                  ),
                ),
              ], options: CarouselOptions(
              autoPlay: false,
              viewportFraction: 1.0,
              aspectRatio: 10 / 18,
              enableInfiniteScroll: false,
              initialPage: 0,
            ),
            ),
            Container(
              width: 350,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> intropage3()),);
                  },
                  child: const Text("Next",style: TextStyle(fontSize: 25,),)),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const login1()),);
              }, child: const Text("Skip",style: TextStyle(color: Colors.black),),

            )
          ],
        ),
      ),
    );
  }
}
