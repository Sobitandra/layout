import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Mainintro extends StatefulWidget {
  const Mainintro({Key? key}) : super(key: key);

  @override
  _MainintroState createState() => _MainintroState();
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  ];
int _current = 0;

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
                        child: Image.asset('assets/images/App3.jpg'),
                        height: 380,
                        width: 380,
                      ),
                      const Text("All Services1",style: TextStyle(fontSize: 30),),
                      const SizedBox(height: 20,),
                      Container(
                          width: 300,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(shape: BoxShape.rectangle),
                          child: const Text("Lorem Ipsum is simply dummy text of the printing"
                              " and typesetting industry.",style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,)),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child:Column(
                    children: [
                      const SizedBox(height: 60,),
                      Container(
                        child: Image.asset('assets/images/App2.jpg'),
                        height: 380,
                        width: 380,
                      ),
                      const Text("All Services2",style: TextStyle(fontSize: 30),),
                      const SizedBox(height: 20,),
                      Container(
                          width: 300,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(shape: BoxShape.rectangle),
                          child: const Text("Lorem Ipsum is simply dummy text of the printing"
                              " and typesetting industry.",style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,)),
                    ],
                  ) ,
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 60,),
                      Container(
                        child: Image.asset('assets/images/App1.jpg'),
                        height: 380,
                        width: 380,
                      ),
                      const Text("All Services3",style: TextStyle(fontSize: 30),),
                      const SizedBox(height: 20,),
                      Container(
                          width: 300,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(shape: BoxShape.rectangle),
                          child: const Text("Lorem Ipsum is simply dummy text of the printing"
                              " and typesetting industry.",style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,)),
                    ],
                  ),
                ),
              ],
              options: CarouselOptions(
              autoPlay: false,
              viewportFraction: 1.0,
              aspectRatio: 10 / 17,
              enableInfiniteScroll: false,
              initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map( (url){
                int index = imgList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
            Container(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: (){
                   // Navigator.push(context, MaterialPageRoute(builder: (context)=>()),);
                   },
                  child: const Text("Next",style: TextStyle(fontSize: 20,),)),
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
