import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
              // Container(
              //   height: 50,
              //   width: 320,
              //   child: ElevatedButton(
              //       style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
              //       onPressed: (){}, child: const Text("Continue")),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
