import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:counter_button/counter_button.dart';

import 'Checkout.dart';

class Shoping_cart extends StatefulWidget {
  const Shoping_cart({Key? key}) : super(key: key);

  @override
  _Shoping_cartState createState() => _Shoping_cartState();
}

class _Shoping_cartState extends State<Shoping_cart> {

  int count = 0;
  int count1 = 0;
  int count2 = 0;
  int count3 = 0;
  int count4 = 0;
  void incrementCount(){
    setState(() {
      count++;
    });
  }
  void decrementCount(){
    setState(() {
      count--;
    });
  }
  void incrementCount1(){
    setState(() {
      count1++;
    });
  }
  void decrementCount1(){
    setState(() {
      count1--;
    });
  }
  void incrementCount2(){
    setState(() {
      count2++;
    });
  }
  void decrementCount2(){
    setState(() {
      count2--;
    });
  }
  void incrementCount3(){
    setState(() {
      count3++;
    });
  }
  void decrementCount3(){
    setState(() {
      count3--;
    });
  }
  void incrementCount4(){
    setState(() {
      count4++;
    });
  }
  void decrementCount4(){
    setState(() {
      count4--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff56b25),
        centerTitle: true,
        title: const Text("My Cart"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xffececec),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 22),
                color: const Color(0xffececec),
                height: 120,
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                        color: Colors.white,
                      ),
                        width: 260,
                        height: 60,
                      padding: EdgeInsets.only(left: 25),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Enter Coupen',
                          hintText: 'coupen Code'
                        ),
                      )
                    ),
                    Container(
                      width: 105,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                        ),
                        child: const Text("Apply"),
                      onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Checkout()));
                      },),
                    )
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                color: Colors.white,
                height: 120,
                child: Row(
                  children: [
                    const SizedBox(width: 15,),
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/App25.jfif'),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: const [
                                Text("\$248",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                )),
                                SizedBox(width: 8,),
                                Text("\$300",style: TextStyle(
                                    decoration: TextDecoration.lineThrough
                                ),)
                              ],
                            )
                        ),
                        const SizedBox(height: 12,),
                        const Text("Chakki Atta",style: const TextStyle(
                            fontSize: 18,
                            color: Colors.grey
                        ),),
                        const SizedBox(height: 12,),
                        const Text("10 KG")
                      ],
                    ),
                    const SizedBox(width: 75,),
                    Container(
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Container(
                              padding: const EdgeInsets.all(5),
                              color: const Color(0xff46ad23),
                              height: 25,
                              width: 70,
                              child: const Text("24%OFF",style: TextStyle(color: Colors.white),)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                                child: IconButton(onPressed:decrementCount,
                                  icon: const Icon(Icons.remove,size: 25,color: Colors.blueAccent,),),
                              ),
                              Text('${count}'),
                              IconButton(
                                onPressed: incrementCount,
                                icon:const Icon(Icons.add,size: 25,color: Colors.blueAccent,),),
                            ],
                          )
                          // Container(
                          //   child: CounterButton(
                          //     loading: false,
                          //     onChange: (int value) {
                          //       setState(() {
                          //         countervalus=value;
                          //       });
                          //   },
                          //     count: countervalus,
                          //     countColor: Colors.blueAccent,
                          //   ),
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 22,),
              Container(
                width: double.maxFinite,
                color: Colors.white,
                height: 120,
                child: Row(
                  children: [
                    const SizedBox(width: 15,),
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/App25.jfif'),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: const [
                                Text("\$248",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                )),
                                SizedBox(width: 8,),
                                Text("\$300",style: TextStyle(
                                    decoration: TextDecoration.lineThrough
                                ),)
                              ],
                            )
                        ),
                        const SizedBox(height: 12,),
                        const Text("Chakki Atta",style: const TextStyle(
                            fontSize: 18,
                            color: Colors.grey
                        ),),
                        const SizedBox(height: 12,),
                        const Text("10 KG")
                      ],
                    ),
                    const SizedBox(width: 75,),
                    Container(
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Container(
                              padding: const EdgeInsets.all(5),
                              color: const Color(0xff46ad23),
                              height: 25,
                              width: 70,
                              child: const Text("24%OFF",style: TextStyle(color: Colors.white),)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                                child: IconButton(onPressed:decrementCount1,
                                  icon: const Icon(Icons.remove,size: 25,color: Colors.blueAccent,),),
                              ),
                              Text('${count1}'),
                              IconButton(
                                onPressed: incrementCount1,
                                icon:const Icon(Icons.add,size: 25,color: Colors.blueAccent,),),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 22,),
              Container(
                width: double.maxFinite,
                color: Colors.white,
                height: 120,
                child: Row(
                  children: [
                    const SizedBox(width: 15,),
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/App25.jfif'),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: const [
                                Text("\$248",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                )),
                                SizedBox(width: 8,),
                                Text("\$300",style: TextStyle(
                                    decoration: TextDecoration.lineThrough
                                ),)
                              ],
                            )
                        ),
                        const SizedBox(height: 12,),
                        const Text("Chakki Atta",style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey
                        ),),
                        const SizedBox(height: 12,),
                        const Text("10 KG")
                      ],
                    ),
                    const SizedBox(width: 75,),
                    Container(
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Container(
                              padding: const EdgeInsets.all(5),
                              color: const Color(0xff46ad23),
                              height: 25,
                              width: 70,
                              child: const Text("24%OFF",style: TextStyle(color: Colors.white),)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                                child: IconButton(onPressed:decrementCount2,
                                  icon: const Icon(Icons.remove,size: 25,color: Colors.blueAccent,),),
                              ),
                              Text('${count2}'),
                              IconButton(
                                onPressed: incrementCount2,
                                icon:const Icon(Icons.add,size: 25,color: Colors.blueAccent,),),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 22,),
              Container(
                width: double.maxFinite,
                color: Colors.white,
                height: 120,
                child: Row(
                  children: [
                    const SizedBox(width: 15,),
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/App25.jfif'),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: const [
                                Text("\$248",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                )),
                                SizedBox(width: 8,),
                                Text("\$300",style: TextStyle(
                                    decoration: TextDecoration.lineThrough
                                ),)
                              ],
                            )
                        ),
                        const SizedBox(height: 12,),
                        const Text("Chakki Atta",style: const TextStyle(
                            fontSize: 18,
                            color: Colors.grey
                        ),),
                        const SizedBox(height: 12,),
                        const Text("10 KG")
                      ],
                    ),
                    const SizedBox(width: 75,),
                    Container(
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Container(
                              padding: const EdgeInsets.all(5),
                              color: const Color(0xff46ad23),
                              height: 25,
                              width: 70,
                              child: const Text("24%OFF",style: TextStyle(color: Colors.white),)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                                child: IconButton(onPressed:decrementCount3,
                                  icon: const Icon(Icons.remove,size: 25,color: Colors.blueAccent,),),
                              ),
                              Text('${count3}'),
                              IconButton(
                                onPressed: incrementCount3,
                                icon:const Icon(Icons.add,size: 25,color: Colors.blueAccent,),),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 22,),
              Container(
                width: double.maxFinite,
                color: Colors.white,
                height: 120,
                child: Row(
                  children: [
                    const SizedBox(width: 15,),
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/App25.jfif'),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: const [
                                Text("\$248",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                )),
                                SizedBox(width: 8,),
                                Text("\$300",style: TextStyle(
                                    decoration: TextDecoration.lineThrough
                                ),)
                              ],
                            )
                        ),
                        const SizedBox(height: 12,),
                        const Text("Chakki Atta",style: const TextStyle(
                            fontSize: 18,
                            color: Colors.grey
                        ),),
                        const SizedBox(height: 12,),
                        const Text("10 KG")
                      ],
                    ),
                    const SizedBox(width: 75,),
                    Container(
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Container(
                              padding: const EdgeInsets.all(5),
                              color: const Color(0xff46ad23),
                              height: 25,
                              width: 70,
                              child: const Text("24%OFF",style: const TextStyle(color: Colors.white),)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                                child: IconButton(onPressed:decrementCount4,
                                  icon: const Icon(Icons.remove,size: 25,color: Colors.blueAccent,),),
                              ),
                              Text('${count4}'),
                              IconButton(
                                onPressed: incrementCount4,
                                icon:const Icon(Icons.add,size: 25,color: Colors.blueAccent,),),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
