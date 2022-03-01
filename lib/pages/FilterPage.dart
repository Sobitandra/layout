import 'package:flutter/material.dart';


enum ordertype1 { small ,medium , large , extraLarge}
enum ordertype2 { one ,two , three , four}
class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}
class _FilterState extends State<Filter> {
  bool Firstvalue1 = false;
  bool Firstvalue2 = false;
  bool Firstvalue3 = false;
  bool Firstvalue4 = false;
  bool Firstvalue5 = false;
  bool Firstvalue6 = false;

  int count = 0;
  void incrementCount (){
    setState(() {
      count++;
    });
  }
  void decrementCount (){
    setState(() {
      count--;
    });
  }

  ordertype1? selected = ordertype1.small;
  ordertype2? selected2 = ordertype2.one;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 23,top: 20),
      height: 700,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Excotic Pizza',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold
                ),),
                IconButton(onPressed: ()=> Navigator.pop(context), icon: const Icon(Icons.highlight_remove,size: 32,)),
              ],
            ),
          ),
          Container(
              width: 300,
              child: const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.')),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Variation',style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold
          ),),
          Container(
              width: 300,
              child: const Text('Please select any one option.')),
          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('small',
                  style:TextStyle(
                    color:selected==ordertype1.small? Colors.blueAccent: Colors.black,
                    fontSize: 22,),),
                Text('\$249',
                  style:TextStyle(
                      color:selected==ordertype1.small? Colors.blueAccent: Colors.black,
                      fontSize: 16 ),),
              ],
            ),
            value: ordertype1.small,
            groupValue: selected,
            onChanged: (ordertype1? value) { setState(() { selected = value; }); },
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     TextButton(
          //         onPressed: (){},
          //         child: Text('Small', style: TextStyle(
          //             color: Firstvalue1 ? Colors.blueAccent: Colors.black, fontSize: 17),)
          //     ),
          //     Row(
          //       children: [
          //         Text('\$249',style: TextStyle(color: Firstvalue1 ? Colors.blueAccent : Colors.black,fontSize: 17),),
          //         Radio(value: ordertype1.small, groupValue: selected,
          //             onChanged: (ordertype1? value){
          //               setState(() {
          //                 selected=value;
          //                 Firstvalue1 = !Firstvalue1 ;
          //               });
          //             })
          //       ],
          //     ),
          //   ],
          // ),//small
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     TextButton(
          //         onPressed: (){},
          //         child: Text('Medium', style: TextStyle(
          //             color: Firstvalue2 ? Colors.blueAccent: Colors.black, fontSize: 17),)
          //     ),
          //     Row(
          //       children: [
          //         Text('\$489',style: TextStyle(color: Firstvalue2 ? Colors.blueAccent : Colors.black,fontSize: 17),),
          //         Radio(value: ordertype1.medium, groupValue: selected,
          //             onChanged: (ordertype1? value){
          //               setState(() {
          //                 selected=value;
          //                 Firstvalue2 = !Firstvalue2 ;
          //               });
          //             })
          //       ],
          //     ),
          //   ],
          // ),//medium
          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('medium',
                  style:TextStyle(
                    color:selected==ordertype1.medium? Colors.blueAccent: Colors.black,
                    fontSize: 20,),),
                Text('\$249',
                  style:TextStyle(
                      color:selected==ordertype1.medium? Colors.blueAccent: Colors.black,
                      fontSize: 16 ),),
              ],
            ),
            value: ordertype1.medium,
            groupValue: selected,
            onChanged: (ordertype1? value) { setState(() { selected = value; }); },
          ),
          SizedBox(height: 8,),
          Text('Choice[7 Inch]',style: TextStyle(
              fontSize: 26,
          ),),
          Container(
              width: 300,
              child: const Text('Please select any one option.')),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     TextButton(
          //         onPressed: (){},
          //         child: Text('Hand Tossed', style: TextStyle(
          //             color: Firstvalue3 ? Colors.blueAccent: Colors.black, fontSize: 17),)
          //     ),
          //     Row(
          //       children: [
          //         Radio(value: ordertype2.one, groupValue: selected2, onChanged: (ordertype2? value ){
          //           setState(() {
          //             selected2=value;
          //             Firstvalue3 = !Firstvalue3 ;
          //           });
          //         })
          //       ],
          //     ),
          //   ],
          // ),//Hand Tossed
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     TextButton(
          //         onPressed: (){},
          //         child: Text('Fresh pan', style: TextStyle(
          //             color: Firstvalue4 ? Colors.blueAccent: Colors.black, fontSize: 17),)
          //     ),
          //     Row(
          //       children: [
          //         Text('\$15',style: TextStyle(color: Firstvalue4 ? Colors.blueAccent : Colors.black,fontSize: 17),),
          //         Radio(value: ordertype2.two, groupValue: selected2, onChanged: (ordertype2? value ){
          //           setState(() {
          //             selected2=value;
          //             Firstvalue4 = !Firstvalue4 ;
          //           });
          //         })
          //       ],
          //     ),
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     TextButton(
          //         onPressed: (){},
          //         child: Text('Thin Crust', style: TextStyle(
          //             color: Firstvalue5 ? Colors.blueAccent: Colors.black, fontSize: 17),)
          //     ),
          //     Row(
          //       children: [
          //         Text('\$20',style: TextStyle(color: Firstvalue5 ? Colors.blueAccent : Colors.black,fontSize: 17),),
          //         Radio(value: ordertype2.three, groupValue: selected2, onChanged: (ordertype2? value ){
          //           setState(() {
          //             selected2=value;
          //             Firstvalue5 = !Firstvalue5 ;
          //           });
          //         })
          //       ],
          //     ),
          //   ],
          // ),
          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hand Tossed',
                  style:TextStyle(
                    color:selected2==ordertype2.one? Colors.blueAccent: Colors.black,
                    fontSize: 20,),),
              ],
            ),
            value: ordertype2.one,
            groupValue: selected2,
            onChanged: (ordertype2? value) { setState(() { selected2 = value; }); },
          ),
          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Fresh pan',
                  style:TextStyle(
                    color:selected2==ordertype2.two? Colors.blueAccent: Colors.black,
                    fontSize: 20,),),
                Text('\$15',
                  style:TextStyle(
                      color:selected2==ordertype2.two? Colors.blueAccent: Colors.black,
                      fontSize: 16 ),),
              ],
            ),
            value: ordertype2.two,
            groupValue: selected2,
            onChanged: (ordertype2? value) { setState(() { selected2 = value; }); },
          ),
          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Thin Crust',
                  style:TextStyle(
                    color:selected2==ordertype2.three? Colors.blueAccent: Colors.black,
                    fontSize: 20,),),
                Text('\$249',
                  style:TextStyle(
                      color:selected2==ordertype2.three? Colors.blueAccent: Colors.black,
                      fontSize: 16 ),),
              ],
            ),
            value: ordertype2.three,
            groupValue: selected2,
            onChanged: (ordertype2? value) { setState(() { selected2 = value; }); },
          ),
          SizedBox(height: 8,),
          Text('Extra Cheese(small)',style: TextStyle(
              fontSize: 26,
          ),),
          Container(
              width: 300,
              child: const Text('Please select any one option.')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: (){
                    setState(() {
                      Firstvalue6 = !Firstvalue6 ;
                    });
                  },
                  child: Text('Extra Cheese(small)', style: TextStyle(
                      color: Firstvalue6 ? Colors.blueAccent: Colors.black, fontSize: 17),)
              ),
              Row(
                children: [
                  Text('\$60',style: TextStyle(color: Firstvalue6 ? Colors.blueAccent : Colors.black,fontSize: 17),),
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.blue,
                    value: Firstvalue6, onChanged: (value) {
                    setState(() {
                      Firstvalue6=value!;
                    });
                  },
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 18,),
          Row(
            children: [
              Container(
                width: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2,color: Colors.grey,),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed:decrementCount,
                      icon: Icon(Icons.remove,size: 25,color: Colors.blueAccent,),),
                    Text('${count}'),
                    IconButton(
                      onPressed: incrementCount,
                      icon: Icon(Icons.add,size: 25,color: Colors.blueAccent,),),
                  ],
                ),
              ),
              SizedBox(width: 15,),
              Container(
                width: 235,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0
                  ),
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('ADD',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(width: 7,),
                        Text('\$120',style: TextStyle(
                            decoration: TextDecoration.lineThrough,fontSize: 17,fontWeight: FontWeight.bold
                        ),),
                        SizedBox(width: 7,),
                        Text('\$100.140',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                      ],
                    )),
              )
            ],
          ),

        ],
      ),
    );
  }
}
