import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25,),
        Container(
          color: Color(0xff1c50ea),
          width: 350,
          height: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Current Balance",style: TextStyle(fontSize: 25,color: Colors.white),),
              SizedBox(height: 10,),
              Text('\$1200.00',style: TextStyle(fontSize: 38,color: Colors.white),)
            ],
          ),
        ),
        SizedBox(height: 35,),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("ID",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              Text("Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              Text("Dettails",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Container(
          // padding: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              SizedBox(width: 5,),
              Icon(Icons.arrow_circle_down_outlined,color: Colors.green,size: 35,),
              SizedBox(width: 20,),
              Text("#122",style: TextStyle(fontSize: 18),),
              SizedBox(width: 40,),
              Text("\$90.00",style: TextStyle(fontSize: 18),),
              SizedBox(width: 25,),
              Text("Recieve to Jolly Smith",style: TextStyle(fontSize: 18),),
            ],
          ),
        ),
        Container(width: double.maxFinite,
          margin: EdgeInsets.only(top: 10,bottom: 10),
          height: 4,
          color: Color(0xfff3f3f3),),
        Container(
          child: Row(
            children: [
              SizedBox(width: 5,),
              Icon(Icons.arrow_circle_down_outlined,color: Colors.green,size: 35,),
              SizedBox(width: 20,),
              Text("#123",style: TextStyle(fontSize: 18),),
              SizedBox(width: 40,),
              Text("\$25.00",style: TextStyle(fontSize: 18),),
              SizedBox(width: 25,),
              Text("Recieve to Jolly Smith",style: TextStyle(fontSize: 18),),
            ],
          ),
        ),
        Container(width: double.maxFinite,
          margin: EdgeInsets.only(top: 10,bottom: 10),
          height: 4,
          color: Color(0xfff3f3f3),),
        Container(
          padding: EdgeInsets.only(left: 5),
          child: Row(
            children: [
              Icon(Icons.arrow_circle_up_outlined,color: Colors.red,size: 35,),
              SizedBox(width: 20,),
              Text("#569",style: TextStyle(fontSize: 18),),
              SizedBox(width: 40,),
              Text("\$20.00",style: TextStyle(fontSize: 18),),
              SizedBox(width: 20,),
              Text("Recieve to Jolly Smith",style: TextStyle(fontSize: 18),),
            ],
          ),
        ),
      ],
    );
  }
}
