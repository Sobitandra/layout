import 'package:flutter/material.dart';

import '../widget/Products.dart';

enum ordertype { small, medium, large, four }

class example extends StatefulWidget {
  const example({Key? key}) : super(key: key);

  @override
  _exampleState createState() => _exampleState();
}
class _exampleState extends State<example> {
  final products = Products();

  bool Firstvalue1 = false;
  bool Firstvalue2 = false;
  ordertype? selected = ordertype.small;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('small'),
                Row(
                  children: [
                    Text('\$249',style: TextStyle(color: Firstvalue1 ? Colors.blueAccent : Colors.black,fontSize: 17),),
                    Radio(value: ordertype.large, groupValue: selected,
                        onChanged: (ordertype? value){
                          setState(() {
                            selected=value;
                            Firstvalue1 = !Firstvalue1 ;
                          });
                        })
                  ],
                ),
              ],
            ),//small
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: (){},
                    child: Text('Medium', style: TextStyle(
                        color: Firstvalue2 ? Colors.blueAccent: Colors.black, fontSize: 17),)
                ),
                Row(
                  children: [
                    Text('\$489',style: TextStyle(color: Firstvalue2 ? Colors.blueAccent : Colors.black,fontSize: 17),),
                    Radio(value: ordertype.four, groupValue: selected,
                        onChanged: (ordertype? value){
                      setState(() {
                        selected=value;
                        Firstvalue2 = !Firstvalue2 ;
                      });
                        })
                    // Checkbox(
                    //   checkColor: Colors.white,
                    //   activeColor: Colors.blue,
                    //   value: Firstvalue2, onChanged: (value) {
                    //   setState(() {
                    //     Firstvalue2=value!;
                    //   });
                    // },
                    // ),
                  ],
                ),
              ],
            ),//medium
            ListTile(
              title: const Text('Lafayette'),
              trailing: Radio(
                value: ordertype.small,
                groupValue: selected,
                onChanged: (ordertype? value) {
                  setState(() {
                    selected = value;
                  });
                },
              ),
            ),
        RadioListTile(
          controlAffinity: ListTileControlAffinity.trailing,
            
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('small',style:TextStyle(color:selected==ordertype.four? Colors.blueAccent: Colors.black,fontSize: 17 ),),
                Text('\$249',style:TextStyle(color:selected==ordertype.four? Colors.blueAccent: Colors.black ),),
              ],
            ),
            value: ordertype.four,
            groupValue: selected,
            onChanged: (ordertype? value) { setState(() { selected = value; }); },
          )
          ],
        ),
      ),
    );
  }
}
