import 'package:flutter/material.dart';

class Delivary_Info extends StatefulWidget {
  const Delivary_Info({Key? key}) : super(key: key);

  @override
  _Delivary_InfoState createState() => _Delivary_InfoState();
}

class _Delivary_InfoState extends State<Delivary_Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(blurRadius: 0.1,
                          color: Color(0xffaeb5bd),
                          spreadRadius: 0.1)
                    ],
                    color: Colors.white,
                  ),
                  width: 360,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Store Name', style: TextStyle(
                                    color: Colors.grey, fontSize: 16),),
                                Text('Macdonals', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Container(
                              width: 47,
                              height: 47,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xffaeb5bd)
                              ),
                              child: const Icon(Icons.storefront, color: Colors
                                  .white, size: 30,),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        width: 350,
                        height: 1,), //Separator
                      Container(
                        padding: const EdgeInsets.all(17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Store Number', style: TextStyle(
                                    color: Colors.grey, fontSize: 16),),
                                Text('9876543210',
                                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Container(
                              width: 47,
                              height: 47,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green
                              ),
                              child: const Icon(Icons.call, color: Colors.white,
                                size: 30,),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        width: 350,
                        height: 1,), //Separator
                      Container(
                        padding: const EdgeInsets.all(17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 250,
                                    child: const Text(
                                      'Check Driver Location',
                                      style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                              ],
                            ),
                            Container(
                              width: 47,
                              height: 47,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blueAccent
                              ),
                              child: const Icon(
                                Icons.location_on_outlined, color: Colors.white,
                                size: 30,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(blurRadius: 0.1,color: Color(0xffaeb5bd),spreadRadius: 0.1)
                    ],
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(15),
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Delivary Fee',style: TextStyle(fontSize: 15),),
                          Text('\$0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                        ],
                      ),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Tax (Vat)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          Text('\$5.7',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                        ],
                      ),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Total Payment',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          Text('\$57.7',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.green),)
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              width: 320,
              height: 50,
              color: Colors.lightGreen,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    elevation: 0.0
                  ),
                  child: Text('Mark Delivary',style: TextStyle(color: Colors.white,fontSize: 22),)),
            )
          ],
        ),
      ),
    );
  }
}