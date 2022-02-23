import 'package:flutter/material.dart';

import 'ContactTAB.dart';
import 'ProductTAB.dart';
import 'ReviewPage.dart';
import 'TabBarNav.dart';
import 'myprofile.dart';

class Store_Pages extends StatefulWidget {
  const Store_Pages({Key? key}) : super(key: key);

  @override
  _Store_PagesState createState() => _Store_PagesState();
}

class _Store_PagesState extends State<Store_Pages> {

  String dropdownvalue='Categories';
  var items = [
    'Categories',
    'Service',
    'Fashone',
    'Jwellery',
    'Kids',
  ];

  // TabController _tabController = TabController(length: 3, vsync: );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
            height: 1200,
            width: MediaQuery.of(context).size.width ,
            child: Stack(
              children: [
                Container(
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
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/images/App9.jpg',scale: 0.5,),
                      SizedBox(height: 180,),
                      Container(
                        child: const TabBar(
                          indicatorColor: Colors.blueAccent,
                          labelPadding: EdgeInsets.all(5),
                          tabs: [
                            Text("Products",style: TextStyle(color: Colors.blueAccent,fontSize: 18),),
                            Text("Review",style: TextStyle(color: Colors.blueAccent,fontSize: 18),),
                            Text("Contact",style: TextStyle(color: Colors.blueAccent,fontSize: 18),),
                          ],
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 300,
                        child: TabBarView(children: [
                          Text("kjbsd"),
                          Text("ejbcje"),
                          Text("ecjhbehjc")
                        ]),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   child: TabBarNav(),
                // ),
                Positioned(
                  top: 270,
                  left: 30,
                  child: Container(
                    width: 350,
                    height: 200,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset('assets/images/App18.jpg',)),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    children: [
                                      const Text("Shopper World",style: TextStyle(
                                        fontSize: 20,fontWeight: FontWeight.bold
                                      ),),
                                      Row(
                                        children: const [
                                          Icon(Icons.star,size: 18,color: Colors.yellow,),
                                          Icon(Icons.star,size: 18,color: Colors.yellow,),
                                          Icon(Icons.star,size: 18,color: Colors.yellow,),
                                          Icon(Icons.star,size: 18,color: Colors.yellow,),
                                          Icon(Icons.star_border,size: 18,),
                                        ],
                                      ),
                                      const Text("2.1k Followers",style: TextStyle(color: const Color(0xfffa7da3),fontSize: 14),)
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 50,),
                                ElevatedButton(onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xfff55c59)
                                    ),
                                    child: const Text("Follow"))
                              ],
                            )
                        ),
                        const SizedBox(height: 45,),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Material(
                            elevation: 3.0,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Search Products",
                                  suffixIcon: const Icon(Icons.search)
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
