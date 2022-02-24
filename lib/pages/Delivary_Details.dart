import 'package:flutter/material.dart';

class Delivary_Details extends StatefulWidget {
  const Delivary_Details({Key? key}) : super(key: key);

  @override
  _Delivary_DetailsState createState() => _Delivary_DetailsState();
}

class _Delivary_DetailsState extends State<Delivary_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delivary Details"),
        centerTitle: true,
        backgroundColor: const Color(0xfff56b25),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: 360,
              height: 180,
              child: Column(
                children: [
                  Text('Delivary Details')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget commonTextFormField(String title ) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: title
        ),
      ),
    );
  }
}
