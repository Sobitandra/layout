import 'package:flutter/material.dart';

class Shipping_Delivary_Info extends StatefulWidget {
  const Shipping_Delivary_Info({Key? key}) : super(key: key);

  @override
  _Shipping_Delivary_InfoState createState() => _Shipping_Delivary_InfoState();
}

class _Shipping_Delivary_InfoState extends State<Shipping_Delivary_Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(blurRadius: 0.1,color: Color(0xffaeb5bd),spreadRadius: 0.1)
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
                          Text('Store Name',style: TextStyle(color: Colors.grey,fontSize: 16),),
                          Text('Macdonals',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Container(
                        width: 47,
                        height: 47,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xffaeb5bd)
                        ),
                        child: const Icon(Icons.storefront,color: Colors.white,size: 30,),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey,
                  width: 350,
                  height: 1,),//Separator
                Container(
                  padding: const EdgeInsets.all(17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Store Number',style: TextStyle(color: Colors.grey,fontSize: 16),),
                          Text('9876543210',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Container(
                        width: 47,
                        height: 47,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green
                        ),
                        child: const Icon(Icons.call,color: Colors.white,size: 30,),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey,
                  width: 350,
                  height: 1,),//Separator
                Container(
                  padding: const EdgeInsets.all(17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Sipping Address',style: TextStyle(color: Colors.grey,fontSize: 16),),
                          Container(
                              width: 250,
                              child: const Text('Prem Colony, Nehru Nagar,Panipech,jaipur ',style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                      Container(
                        width: 47,
                        height: 47,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent
                        ),
                        child: const Icon(Icons.location_on_outlined,color: Colors.white,size: 30,),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey,
                  width: 350,
                  height: 1,),//Separator
                Container(
                  padding: const EdgeInsets.all(17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Billing Address',style: TextStyle(color: Colors.grey,fontSize: 16),),
                          Container(
                              width: 250,
                              child: const Text('Prem Colony, Nehru Nagar,Panipech,jaipur ',style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                      Container(
                        width: 47,
                        height: 47,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent
                        ),
                        child: const Icon(Icons.attach_money_sharp,color: Colors.white,size: 30,),
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
          )
        ],
      ),
    ),
    );
  }
  // CommonRow(String Firsttext, number) {
  //   return Container(
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Text( Firsttext,style: TextStyle(fontSize: 15),),
  //         Text(number,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
  //       ],
  //     ),
  //   );
  // }
}
