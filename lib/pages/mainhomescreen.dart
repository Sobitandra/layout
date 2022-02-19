import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'myprofile.dart';

class Mainhomepage extends StatefulWidget {
  const Mainhomepage({Key? key}) : super(key: key);

  @override
  _MainhomepageState createState() => _MainhomepageState();
}

class _MainhomepageState extends State<Mainhomepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
        primarySwatch: Colors.brown
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.orange,
            elevation: null,
             actions: [
               Padding(
                 padding: const EdgeInsets.all(0),
                 child: IconButton( onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> My_Profile()));
                 }, icon: Icon(Icons.person),),
               ),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                 child: IconButton( onPressed: () { }, icon: Icon(Icons.shopping_cart),),
               )
             ],
            title: TextFormField(
              style: TextStyle(fontSize: 15),
              decoration: const InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
              ),),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.orange
                  ),
                  child: Text("hellow"))
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.orange,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.orange,
              icon: Icon(Icons.call),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.orange,
              icon: Icon(Icons.camera),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.orange,
              icon: Icon(Icons.chat),
              label: 'Stores',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.orange,
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.orange,
              icon: Icon(Icons.list_alt),
              label: 'Mylist',
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 15,),
                CarouselSlider(
                    items: [
                      Container(
                        child: Image.asset('assets/images/carsol1.jpg'),
                      ),
                      Container(
                        child: Image.asset('assets/images/carsol2.jpg'),
                      ),
                      Container(
                        child: Image.asset('assets/images/carsol3.jpg'),
                      ),
                      Container(
                        child: Image.asset('assets/images/carsol4.jpg'),
                      ),
                      Container(
                        child: Image.asset('assets/images/carsol5.jpg'),
                      ),
                    ],
                    options: CarouselOptions(

                      autoPlay: true,
                      autoPlayInterval:const Duration(seconds: 3),
                      pauseAutoPlayOnTouch: true,
                      enlargeCenterPage: true,
                    )),
                SizedBox(height: 10,),
                Text("Category",style: TextStyle(fontSize: 18),),
                Container(
                  height: 100,
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                          children: [
                            Container(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.category_outlined,
                                    color: Colors.pink,
                                  ),
                                  iconSize: 65,
                                  splashColor: Colors.orange,
                                  onPressed: () {},
                                ),),
                            Text("All Category")
                          ]
                      ),
                      SizedBox(width: 35,),
                      Column(
                          children: [
                            Container(
                              child: IconButton(
                                icon: Icon(
                                  Icons.list_alt,
                                  color: Colors.pink,
                                ),
                                iconSize: 65,
                                splashColor: Colors.orange,
                                onPressed: () {},
                              ),),
                            Text("Grocery")
                          ]
                      ),
                      SizedBox(width: 35,),
                      Column(
                          children: [
                            Container(
                              child: IconButton(
                                icon: Icon(
                                  Icons.settings_system_daydream_outlined,
                                  color: Colors.pink,
                                ),
                                iconSize: 65,
                                splashColor: Colors.orange,
                                onPressed: () {},
                              ),),
                            Text("Fashon")
                          ]
                      ),
                      SizedBox(width: 35,),
                      Column(
                          children: [
                            Container(
                              child: IconButton(
                                icon: Icon(
                                  Icons.one_k,
                                  color: Colors.pink,
                                ),
                                iconSize: 65,
                                splashColor: Colors.orange,
                                onPressed: () {},
                              ),),
                            Text("jwellery")
                          ]
                      ),
                      SizedBox(width: 35,),
                      Column(
                          children: [
                            Container(
                              child: IconButton(
                                icon: Icon(
                                  Icons.category_outlined,
                                  color: Colors.pink,
                                ),
                                iconSize: 65,
                                splashColor: Colors.orange,
                                onPressed: () {},
                              ),),
                            Text("All Category")
                          ]
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Image.asset('assets/images/homepage.jpg',),
                ),
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                          width: 100,
                          height: 100,
                          child: Image.asset('assets/images/profile.jpg')),
                      Column(
                        children: [
                          Text("New Fashion Shop",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("121 king street,new york,USA"),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  child: Image.asset('assets/images/home1.jpg',),
                ),
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                          width: 100,
                          height: 100,
                          child: Image.asset('assets/images/profile.jpg')),
                      Column(
                        children: [
                          Text("New Fashion Shop",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("121 king street,new york,USA"),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ),

      ),
    );
  }
}
