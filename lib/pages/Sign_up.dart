import 'package:flutter/material.dart';


class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  _Sign_upState createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back1.png"),
              fit: BoxFit.cover,),
              color: Colors.orange,
          ),
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 75,),
                Container(
                    child: const Text("SIGN UP",style: const TextStyle(fontSize: 42,color: Colors.white),)),
                const Text("Register your Driver Account",style: TextStyle(color: Colors.white,fontSize: 18),),
                SizedBox(height: 25,),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all( Radius.circular(20),),
                    color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 1.5,
                          spreadRadius: 0.0,
                          offset: Offset(0.0, 0.0,), // shadow direction: bottom right
                        )
                      ]
                  ),
                  width: 380,
                  height: 665,
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Column(
                    children:[
                      const SizedBox(height: 5,),
                      Container(
                        padding: EdgeInsets.all(9),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon( Icons.account_box),
                              labelText: 'First name',
                              hintText: 'First name'
                          ),
                        ),
                      ),//user
                      Container(
                        padding: EdgeInsets.all(9),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon( Icons.account_box),
                              labelText: 'Last name',
                              hintText: 'Last name'
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(9),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon( Icons.email_outlined),
                              labelText: 'Email',
                              hintText: 'example@gmail.com'
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(9),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon( Icons.mobile_friendly),
                              labelText: 'Mobile number',
                              hintText: 'Your phone no.'
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(9),
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock_outline),
                              labelText: 'Account password',
                              hintText: 'Enter password'
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(9),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon( Icons.date_range),
                              labelText: 'Date of birth',
                              hintText: 'Your birth date'
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(9),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon( Icons.directions_car),
                              labelText: 'Delivery town/City',
                              hintText: 'Your address'
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        width: 320,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                            onPressed: (){}, child: const Text("Sign up")),
                      ),
                   ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
