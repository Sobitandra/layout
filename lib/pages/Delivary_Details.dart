import 'package:flutter/material.dart';

import '../Addtional_pages/Delivary_Details_Shipping_Info.dart';
import '../Addtional_pages/Delivary_Info.dart';
import 'Checkout.dart';

class Delivary_Details extends StatefulWidget {
  const Delivary_Details({Key? key}) : super(key: key);

  @override
  _Delivary_DetailsState createState() => _Delivary_DetailsState();
}

class _Delivary_DetailsState extends State<Delivary_Details> with SingleTickerProviderStateMixin {

  late TabController _tabController ;
  @override
  void initState(){
    super.initState();
    _tabController= TabController(length: 2, vsync: this);
  }

  @override
  void despose(){
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Delivary Details"),
        centerTitle: true,
        backgroundColor: const Color(0xfff56b25),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(blurRadius: 0.5,color: Colors.grey)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 360,
                height: 135,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(Icons.list_alt_sharp,color: Colors.blueAccent,size: 27,),
                          SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 5,),
                              Text('Order: #123',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 16),),
                              SizedBox(height: 5,),
                              Text('Monday, 28 feb, 2022')
                            ],
                          ),
                          SizedBox(width: 46,),
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.lightGreen,
                              ),
                              child: Text('Successful',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(width: 45,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(text: const TextSpan(
                                text: '2x',
                                style: TextStyle(color: Colors.grey,fontSize: 18),
                                children: [
                                  TextSpan(
                                    text: 'Chicken Nuggets',
                                    style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)
                                  )
                                ]
                              )),
                              Text('Cash on Delivary',style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          SizedBox(width: 75,),
                          Text('\$57.70',style: TextStyle(color: Colors.lightGreen,fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20,bottom: 20),
                    child: TabBar(
                      labelStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelColor: Colors.grey,
                      labelColor: Color(0xfff56b25),
                      indicatorColor: Color(0xfff56b25),
                      controller: _tabController,
                        tabs: [
                          Container(
                            child: Text('Delivary Details'),
                          ),
                          Container(
                            child: Text('Shipping Information'),
                          )
                        ]),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 545,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Delivary_Info(),
                        Shipping_Delivary_Info(),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget commonTextFormField(String title ) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: title
        ),
      ),
    );
  }
}
