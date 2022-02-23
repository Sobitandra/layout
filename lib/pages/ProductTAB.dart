import 'package:flutter/material.dart';

class ProductTAb extends StatefulWidget {
  const ProductTAb({Key? key}) : super(key: key);

  @override
  _ProductTAbState createState() => _ProductTAbState();
}

class _ProductTAbState extends State<ProductTAb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("All products"),
      ),
    );
  }
}
