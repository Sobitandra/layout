import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Profile_edit.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Image.asset('assets/images/App7.jpg',scale: 0.6,),
              ),
              SizedBox(height: 20,),
              Text("Verification Code",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                width: 300,
                  child: Text("OTP has been send to your mobile number please verfy",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,)),
              SizedBox(height: 50,),
              Container(
                width: 350,
                child: PinInputTextField(
                  pinLength: 4,
                  onChanged: (value){
                    print(value);
                  },
                ),
              ),
              SizedBox(height: 50,),
              Container(
                width: 350,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile_page()));
                    }, child: const Text("Confirm")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
