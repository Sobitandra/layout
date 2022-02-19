import 'package:flutter/material.dart';
import 'login.dart';


class intropage3 extends StatefulWidget {
  const intropage3({Key? key}) : super(key: key);

  @override
  _intropage3State createState() => _intropage3State();
}

class _intropage3State extends State<intropage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 60,),
              Container(
                  child: Image.asset('assets/images/shopingcart.jpg'),
                height: 380,
                width: 380,
              ),
              const Text("All Services2",style: TextStyle(fontSize: 30),),
              const SizedBox(height: 10,),
              SizedBox(height: 25,),
              Container(
                  width: 300,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(shape: BoxShape.rectangle),
                  child: const Text("get all services get all services get all services get all services "
                      "get all services get all services",style: TextStyle(fontSize: 20),)),
              SizedBox(height: 150,),
              Container(
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> login1()),);
                    },
                    child: const Text("Next",style: TextStyle(fontSize: 25,),)),
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const login1()),);
                }, child: const Text("Skip",style: TextStyle(color: Colors.black),),

              )
            ],
          )

      ),
    );
  }
}


var image="https://thumbs.dreamstime.com/b/supermarket-cart-loaded-cardboard-boxes-sales-goods-concept-trade-commerce-online-shopping-high-delivery-order-134531493.jpg";
