import 'package:flutter/material.dart';

class Profile_ extends StatefulWidget {
  const Profile_({Key? key}) : super(key: key);

  @override
  _Profile_State createState() => _Profile_State();
}

class _Profile_State extends State<Profile_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: AppBar(
        title: const Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: const Color(0xffed1c24),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                color: const Color(0xffed1c24),
                width: double.maxFinite,
                height: 220,
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.all(5), // Border width
                      decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(42), // Image radius
                          child: Image.asset('assets/images/App16.jpg',),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12,),
                    const Text("William Jones",style: TextStyle(
                      fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold
                    ),),
                    const SizedBox(height: 8,),
                    const Text("Williamjones@gmail.com",style: TextStyle(
                        fontSize: 20,color: Colors.white,
                    ),),
                  ],
                ),
              ),
              const SizedBox(height: 35,),
              Container(
                padding: const EdgeInsets.only(left: 20),
                width: 370,
                color: Colors.white,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Name",
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.only(left: 20),
                width: 370,
                color: Colors.white,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.only(left: 20),
                width: 370,
                color: Colors.white,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Phone Number",
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xffed1c24),
                ),

                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffed1c24),
                      elevation: 0.0,
                    ),
                    child: const Text("UPDATE",style: TextStyle(fontSize: 20),)),
              ),
              const SizedBox(height: 10,),
              TextButton(onPressed: (){},
                  child: const Text("Change Password",
                    style: TextStyle(
                        color: Color(0xffed1c24),
                        fontSize: 17),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
