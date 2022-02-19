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
        backgroundColor: Colors.orange,
        title: const Text("Forgot Password"),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
             Container(
               color: Colors.orange,
               width: 410,
               height: 300,
               child: Image.asset('assets/images/lockimage.png',
               ),
             ),
              const SizedBox(height: 20,),
              const Text("Forgot Password",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),
              Container(
                width: 300,
                  child: const Text("Lorem Ipsum is simply dummy text of the printing and .",
                    style: TextStyle(fontSize: 18),)),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(25),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon( Icons.email_outlined),
                      labelText: 'Email',
                      hintText: 'example@gmail.com'
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 50,
                width: 250,
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
