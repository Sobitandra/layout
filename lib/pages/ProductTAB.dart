import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/Products.dart';

class ProductTAb extends StatefulWidget {
  const ProductTAb({Key? key}) : super(key: key);

  @override
  _ProductTAbState createState() => _ProductTAbState();
}

class _ProductTAbState extends State<ProductTAb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        physics: ScrollPhysics(),
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return Products();
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            childAspectRatio: 0.75
        ),
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
      ),
    );
  }
}
