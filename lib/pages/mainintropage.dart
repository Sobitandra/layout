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
  'assets/images/App3.jpg',
  'assets/images/App2.jpg',
  'assets/images/App1.jpg'
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
              
              items: imgList.map((item) => Container(
                child: Column(
                  children: [
                    SizedBox(height: 60,),
                    Container(
                      child: Image.asset(item),
                      height: 380,
                      width: 380,
                    ),
                    Text("All Services",style: TextStyle(fontSize: 30),),
                    SizedBox(height: 20,),
                     Container(
                         width: 300,
                         alignment: Alignment.center,
                         decoration: const BoxDecoration(shape: BoxShape.rectangle),
                         child: const Text("Lorem Ipsum is simply dummy text of the printing"
                             " and typesetting industry.",style: TextStyle(fontSize: 20),
                           textAlign: TextAlign.center,)),
                  ],
                ),
              )).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map( (item){
                int index = imgList.indexOf(item);
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
              width: double.maxFinite,
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


//
// Container(
//   color: Colors.white,
//   child: Column(
//     children: [
//       const SizedBox(height: 60,),
//       Container(
//         child: Image.asset('assets/images/App3.jpg'),
//         height: 380,
//         width: 380,
//       ),
//       const Text("All Services1",style: TextStyle(fontSize: 30),),
//       const SizedBox(height: 20,),
//       Container(
//           width: 300,
//           alignment: Alignment.center,
//           decoration: const BoxDecoration(shape: BoxShape.rectangle),
//           child: const Text("Lorem Ipsum is simply dummy text of the printing"
//               " and typesetting industry.",style: TextStyle(fontSize: 20),
//           textAlign: TextAlign.center,)),
//     ],
//   ),
// ),



// Container(
//   color: Colors.white,
//   child:Column(
//     children: [
//       const SizedBox(height: 60,),
//       Container(
//         child: Image.asset('assets/images/App2.jpg'),
//         height: 380,
//         width: 380,
//       ),
//       const Text("All Services2",style: TextStyle(fontSize: 30),),
//       const SizedBox(height: 20,),
//       Container(
//           width: 300,
//           alignment: Alignment.center,
//           decoration: const BoxDecoration(shape: BoxShape.rectangle),
//           child: const Text("Lorem Ipsum is simply dummy text of the printing"
//               " and typesetting industry.",style: TextStyle(fontSize: 20),
//             textAlign: TextAlign.center,)),
//     ],
//   ) ,
// ),
// Container(
//   color: Colors.white,
//   child: Column(
//     children: [
//       const SizedBox(height: 60,),
//       Container(
//         child: Image.asset('assets/images/App1.jpg'),
//         height: 380,
//         width: 380,
//       ),
//       const Text("All Services3",style: TextStyle(fontSize: 30),),
//       const SizedBox(height: 20,),
//       Container(
//           width: 300,
//           alignment: Alignment.center,
//           decoration: const BoxDecoration(shape: BoxShape.rectangle),
//           child: const Text("Lorem Ipsum is simply dummy text of the printing"
//               " and typesetting industry.",style: TextStyle(fontSize: 20),
//             textAlign: TextAlign.center,)),
//     ],
//   ),
// ),