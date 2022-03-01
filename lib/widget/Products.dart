import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Image.asset('assets/images/App16.jpg',)
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.fromLTRB(9, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Best Fashion",style: TextStyle(fontSize: 18),),
                  const Text("Blue",style: TextStyle(color: Colors.blueAccent),),
                  Row(
                    children: [
                      const Text("\$15.29",style: TextStyle(fontSize: 16),),
                      const SizedBox(width: 42,),
                      Container(
                        width: 66,
                        height: 30,
                        color: const Color(0xff2870f8),
                        child: TextButton(onPressed: (){},
                            style: TextButton.styleFrom(
                              primary: const Color(0xff2870f8),
                              elevation: 0.0,
                            ),
                            child: Container(
                              color: const Color(0xff2870f8),
                              child: Row(
                                children: const [
                                  Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),
                                  Icon(Icons.add,size: 20,color: Colors.white,)
                                ],
                              ),
                            )),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
