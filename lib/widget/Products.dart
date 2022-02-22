import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Best Fashion",style: TextStyle(fontSize: 18),),
                  Text("Blue",style: TextStyle(color: Colors.blueAccent),),
                  Row(
                    children: [
                      Text("\$15.29",style: TextStyle(fontSize: 16),),
                      SizedBox(width: 42,),
                      Container(
                        width: 66,
                        height: 30,
                        color: Color(0xff2870f8),
                        child: TextButton(onPressed: (){},
                            style: TextButton.styleFrom(
                              primary: Color(0xff2870f8),
                              elevation: 0.0,
                            ),
                            child: Container(
                              color: Color(0xff2870f8),
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
