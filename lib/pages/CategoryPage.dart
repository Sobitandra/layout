import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  String dropdownvalue='Categories';

  var items= [
    'Texd'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xfff56b25),
        title: Text("Categories"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                  height: 100,
                  color: Colors.white,
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                          width: 70,
                          child: Image.asset('assets/images/App20.jpg'),
                      ),
                      SizedBox(width: 20,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 18,),
                          Text("Cosmetics",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                          Container(
                              width: 250,
                              child: Text("Lorem Ipsum is simply dummy text of the printing. Lorem Ipsum is simply")),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_down)

                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 100,
                  color: Colors.white,
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/images/App21.png'),
                      ),
                      SizedBox(width: 20,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 18,),
                          Text("Fashion",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                          Container(
                              width: 250,
                              child: Text("Lorem Ipsum is simply dummy text of the printing. Lorem Ipsum is simply")),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 100,
                  color: Colors.white,
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/images/App22.jpg'),
                      ),
                      SizedBox(width: 20,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 18,),
                          Text("Jwelery",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                          Container(
                              width: 250,
                              child: Text("Lorem Ipsum is simply dummy text of the printing. Lorem Ipsum is simply")),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_down)
                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //     color: Colors.white,
                      //   ),
                      //   height: 50,
                      //   child: DropdownButtonHideUnderline(
                      //     child: DropdownButton(
                      //         items: users.map((users) {
                      //           return DropdownMenuItem(
                      //             value: users,
                      //             child: Container(
                      //                 width: 10,
                      //                 child: Row(
                      //                   children: [
                      //                     users.icon,
                      //                     Text(users.name,textAlign: TextAlign.center,),
                      //                   ],
                      //                 )),
                      //           );
                      //         }).toList(),
                      //         onChanged: (value){
                      //           setState(() {
                      //             value;
                      //           });
                      //         }
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 100,
                  color: Colors.white,
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/images/App23.jfif'),
                      ),
                      SizedBox(width: 20,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 18,),
                          Text("Kids and Toys",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                          Container(
                              width: 250,
                              child: Text("Lorem Ipsum is simply dummy text of the printing. Lorem Ipsum is simply")),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_down)

                    ],
                  ),
                ),
              ),
              InkWell(onTap: (){},
                child: Container(
                  height: 100,
                  color: Colors.white,
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/images/App24.jpg'),
                      ),
                      SizedBox(width: 20,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 18,),
                          Text("Persional",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                          Container(
                              width: 250,
                              child: Text("Lorem Ipsum is simply dummy text of the printing. Lorem Ipsum is simply")),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 100,
                  color: Colors.white,
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/images/App20.jpg'),
                      ),
                      SizedBox(width: 20,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 18,),
                          Text("Holidays",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                          Container(
                              width: 250,
                              child: Text("Lorem Ipsum is simply dummy text of the printing. Lorem Ipsum is simply")),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
