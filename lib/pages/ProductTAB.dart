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
      height: double.maxFinite,
      child: Column(
        children: [
          SizedBox(height: 20,),
          Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: const Text("Category",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
          Container(
            height: 100,
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 20,),
                Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff8592e8),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.category_outlined,
                            color: Color(0xff0b3880),
                          ),
                          iconSize: 40,
                          splashColor: Colors.orange,
                          onPressed: () {},
                        ),),
                      const Text("All Category")
                    ]
                ),
                const SizedBox(width: 40,),
                Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffdfc581),
                        ),
                        child: IconButton(
                          icon: const Icon(CupertinoIcons.square_favorites,
                            color: Colors.black,
                          ),
                          iconSize: 40,
                          splashColor: Colors.orange,
                          onPressed: () {},
                        ),),
                      const Text("Grocery")
                    ]
                ),
                const SizedBox(width: 40,),
                Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xfffe80fe),
                        ),
                        child: IconButton(
                          icon: const Icon(CupertinoIcons.f_cursive_circle,
                            // color: Colors.pink,
                          ),
                          iconSize: 40,
                          splashColor: Colors.orange,
                          onPressed: () {},
                        ),),
                      const Text("Fashon")
                    ]
                ),
                const SizedBox(width: 40,),
                Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xfffbfd71),
                        ),
                        child: IconButton(
                          icon: const Icon(CupertinoIcons.bitcoin,
                            // color: Colors.pink,
                          ),
                          iconSize: 40,
                          splashColor: const Color(0xff83750a),
                          onPressed: () {},
                        ),),
                      const Text("jwellery")
                    ]
                ),
                const SizedBox(width: 40,),
                Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff8592e8),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.category_outlined,
                            color: Color(0xff0b3880),
                          ),
                          iconSize: 40,
                          splashColor: Colors.orange,
                          onPressed: () {},
                        ),),
                      const Text("All Category",)
                    ]
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 20),
            child: const Text("Fashion",style: TextStyle(fontSize: 20),),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Products(),
                Products(),
              ],
            ),
          ), //Products row
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Products(),
                Products(),
              ],
            ),
          ), //Products row
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Products(),
                Products(),
              ],
            ),
          ), //Products row
        ],
      ),
    );
  }
}
