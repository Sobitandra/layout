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
          color: Colors.orange,
          height: 850,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 45,),
                Container(
                    child: const Text("Sign up",style: const TextStyle(fontSize: 38),)),
                const Text("Register your account"),
                SizedBox(height: 15,),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all( Radius.circular(20),),
                    color: Colors.white,
                  ),
                  width: 380,
                  height: 670,
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
                      SizedBox(height: 18,),
                      Container(
                        height: 50,
                        width: 120,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.blue),
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
