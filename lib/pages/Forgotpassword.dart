import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout/pages/verification.dart';

class Forgotpage extends StatefulWidget {
  const Forgotpage({Key? key}) : super(key: key);

  @override
  _ForgotpageState createState() => _ForgotpageState();
}

class _ForgotpageState extends State<Forgotpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xfff56b25),
        title: const Text("Forgot Password",style: TextStyle(fontSize: 25),),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back2.png"),
              fit: BoxFit.fill,),
          ),
          child: Column(
            children: [
             Container(
               width: 410,
               height: 300,
               child:Image.asset('assets/images/App6.jpg',
             ),),
              const SizedBox(height: 70,),
              const Text("Forgot Password",style: TextStyle(fontSize: 33,fontWeight: FontWeight.normal),),
              const SizedBox(height: 20,),
              Container(
                width: 300,
                  child: const Text("Lorem Ipsum is simply dummy text of the printing and .",
                    style: TextStyle(fontSize: 18,),
                    textAlign: TextAlign.center,
                  )),

              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(25),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon( Icons.email_outlined),
                      labelText: 'Email',
                      hintText: 'example@gmail.com'
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Verification()));
                    }, child: const Text("Reset password")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
