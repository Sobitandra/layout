import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'myprofile.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Mainhomepage extends StatefulWidget {
  const Mainhomepage({Key? key}) : super(key: key);

  @override
  _MainhomepageState createState() => _MainhomepageState();
}
class _MainhomepageState extends State<Mainhomepage> {

  String dropdownvalue='Categories';
  var items = [
    'Categories',
    'Service',
    'Fashone',
    'Jwellery',
    'Kids',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45.0),
          child: AppBar(
            backgroundColor: const Color(0xfff56b25),
            elevation: 0.0,
             actions: [
               Padding(
                 padding: const EdgeInsets.all(0),
                 child: IconButton( onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const My_Profile()));
                 }, icon: const Icon(Icons.person),),
               ),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                 child: IconButton( onPressed: () { }, icon: const Icon(Icons.shopping_cart),),
               )
             ],
            // title: TextFormField(
            //   style: const TextStyle(fontSize: 15),
            //   decoration: const InputDecoration(
            //     hintText: "Search",
            //     prefixIcon: Icon(Icons.search),
            //   ),),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xfff56b25)
                  ),
                  child: Text("hellow"))
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  color: const Color(0xfff56b25),
                  padding: const EdgeInsets.fromLTRB(15, 0, 10, 10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        height: 55,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              style: const TextStyle(fontSize: 15,color: Colors.black,),
                              iconSize: 0.0,
                               value: dropdownvalue,
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Container(
                                      width: 115,
                                      child: Text(items,textAlign: TextAlign.center,)),
                                );
                              }).toList(),
                              onChanged: (String? newvalue){
                              setState(() {
                                dropdownvalue=newvalue!;
                              });
      }
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        width: 260,
                        child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Search for products",
                          border: InputBorder.none,
                          prefixIcon: const Icon(Icons.search)
                        ),
                        ),
                      )
                    ],
                  ),
                ),
                CarouselSlider(
                    items: [
                      Container(
                        child: Image.asset('assets/images/App10.jpg'),
                      ),
                      Container(
                        child: Image.asset('assets/images/App11.jpg'),
                      ),
                      Container(
                        child: Image.asset('assets/images/App13.jpg'),
                      ),
                      Container(
                        child: Image.asset('assets/images/App12.jpg'),
                      ),
                      Container(
                        child: Image.asset('assets/images/App11.jpg'),
                      ),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval:const Duration(seconds: 4),
                      pauseAutoPlayOnTouch: true,
                      enlargeCenterPage: true,
                    )),
                const SizedBox(height: 10,),
                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                    child: const Text("Category",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                Container(
                  height: 100,
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 20,),
                      Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff8592e8),
                              ),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.category_outlined,
                                    color: Color(0xff0b3880),
                                  ),
                                  iconSize: 45,
                                  splashColor: Colors.orange,
                                  onPressed: () {},
                                ),),
                            const Text("All Category")
                          ]
                      ),
                      const SizedBox(width: 40,),
                      Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffdfc581),
                              ),
                              child: IconButton(
                                icon: const Icon(CupertinoIcons.square_favorites,
                                  color: Colors.black,
                                ),
                                iconSize: 45,
                                splashColor: Colors.orange,
                                onPressed: () {},
                              ),),
                            const Text("Grocery")
                          ]
                      ),
                      const SizedBox(width: 40,),
                      Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xfffe80fe),
                              ),
                              child: IconButton(
                                icon: const Icon(CupertinoIcons.f_cursive_circle,
                                  // color: Colors.pink,
                                ),
                                iconSize: 45,
                                splashColor: Colors.orange,
                                onPressed: () {},
                              ),),
                            const Text("Fashon")
                          ]
                      ),
                      const SizedBox(width: 40,),
                      Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xfffbfd71),
                              ),
                              child: IconButton(
                                icon: const Icon(CupertinoIcons.bitcoin,
                                  // color: Colors.pink,
                                ),
                                iconSize: 40,
                                splashColor: const Color(0xff83750a),
                                onPressed: () {},
                              ),),
                            const Text("jwellery")
                          ]
                      ),
                      const SizedBox(width: 40,),
                      Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff8592e8),
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.category_outlined,
                                  color: Color(0xff0b3880),
                                ),
                                iconSize: 45,
                                splashColor: Colors.orange,
                                onPressed: () {},
                              ),),
                            const Text("All Category",)
                          ]
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/images/App5.jpg',),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Container(
                                width: 100,
                                height: 100,
                                child: const Icon(CupertinoIcons.cart_fill_badge_plus,size: 60,),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("New Fashion Shop",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 8,),
                                  Text("121 king street,new york,USA"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(topRight: const Radius.circular(15),topLeft: const Radius.circular(15)),
                          child: Image.asset('assets/images/App8.jpg',)),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                          color: Colors.white,
                        ),

                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: const Icon(CupertinoIcons.cart_fill_badge_plus,size: 60,),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("New Fashion Shop",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 8,),
                                  Text("121 king street,new york,USA"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                          child: Image.asset('assets/images/App9.jpg',)),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                          color: Colors.white,
                        ),

                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: const Icon(CupertinoIcons.cart_fill_badge_plus,size: 60,),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("New Fashion Shop",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 8,),
                                  Text("121 king street,new york,USA"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text("Popular Deals",style: TextStyle(fontSize: 20),),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset('assets/images/App16.jpg',)
                            ),
                            const SizedBox(height: 15,),
                            Container(
                              padding: const EdgeInsets.fromLTRB(9, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Best Fashion",style: const TextStyle(fontSize: 18),),
                                  const Text("Blue",style: TextStyle(color: Colors.blueAccent),),
                                  Row(
                                    children: [
                                      const Text("\$15.29",style: TextStyle(fontSize: 16),),
                                      const SizedBox(width: 42,),
                                      Container(
                                        width: 66,
                                        height: 30,
                                        color: const Color(0xff2870f8),
                                        child: TextButton(onPressed: (){},
                                            style: TextButton.styleFrom(
                                              primary: const Color(0xff2870f8),
                                              elevation: 0.0,
                                            ),
                                            child: Container(
                                              color: const Color(0xff2870f8),
                                              child: Row(
                                                children: const [
                                                  Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),
                                                  Icon(Icons.add,size: 20,color: Colors.white,)
                                                ],
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset('assets/images/App16.jpg',)
                            ),
                            const SizedBox(height: 15,),
                            Container(
                              padding: const EdgeInsets.fromLTRB(9, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Best Fashion",style: const TextStyle(fontSize: 18),),
                                  const Text("Blue",style: TextStyle(color: Colors.blueAccent),),
                                  Row(
                                    children: [
                                      const Text("\$15.29",style: TextStyle(fontSize: 16),),
                                      const SizedBox(width: 42,),
                                      Container(
                                        width: 66,
                                        height: 30,
                                        color: const Color(0xff2870f8),
                                        child: TextButton(onPressed: (){},
                                            style: TextButton.styleFrom(
                                              primary: const Color(0xff2870f8),
                                              elevation: 0.0,
                                            ),
                                            child: Container(
                                              color: const Color(0xff2870f8),
                                              child: Row(
                                                children: const [
                                                  Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),
                                                  Icon(Icons.add,size: 20,color: Colors.white,)
                                                ],
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.white,
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset('assets/images/App16.jpg',)
                            ),
                            const SizedBox(height: 15,),
                            Container(
                              padding: const EdgeInsets.fromLTRB(9, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Best Fashion",style: TextStyle(fontSize: 18),),
                                  const Text("Blue",style: TextStyle(color: Colors.blueAccent),),
                                  Row(
                                    children: [
                                      const Text("\$15.29",style: TextStyle(fontSize: 16),),
                                      const SizedBox(width: 42,),
                                      Container(
                                        width: 66,
                                        height: 30,
                                        color: const Color(0xff2870f8),
                                        child: TextButton(onPressed: (){},
                                            style: TextButton.styleFrom(
                                              primary: const Color(0xff2870f8),
                                              elevation: 0.0,
                                            ),
                                            child: Container(
                                              color: const Color(0xff2870f8),
                                              child: Row(
                                                children: const [
                                                  Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),
                                                  Icon(Icons.add,size: 20,color: Colors.white,)
                                                ],
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset('assets/images/App16.jpg',)
                            ),
                            const SizedBox(height: 15,),
                            Container(
                              padding: const EdgeInsets.fromLTRB(9, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Best Fashion",style: TextStyle(fontSize: 18),),
                                  const Text("Blue",style: TextStyle(color: Colors.blueAccent),),
                                  Row(
                                    children: [
                                      const Text("\$15.29",style: TextStyle(fontSize: 16),),
                                      const SizedBox(width: 42,),
                                      Container(
                                        width: 66,
                                        height: 30,
                                        color: const Color(0xff2870f8),
                                        child: TextButton(onPressed: (){},
                                            style: TextButton.styleFrom(
                                              primary: const Color(0xff2870f8),
                                              elevation: 0.0,
                                            ),
                                            child: Container(
                                              color: const Color(0xff2870f8),
                                              child: Row(
                                                children: const [
                                                  Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),
                                                  Icon(Icons.add,size: 20,color: Colors.white,)
                                                ],
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/images/App17.jpg'),
                const SizedBox(height: 15,)
              ],
            ),
          )
        ),

      ),
    );
  }
}
