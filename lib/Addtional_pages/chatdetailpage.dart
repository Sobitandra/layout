import 'package:flutter/material.dart';

class chatpagedetails extends StatefulWidget {
  const chatpagedetails({Key? key}) : super(key: key);

  @override
  State<chatpagedetails> createState() => _chatpagedetailsState();
}

class _chatpagedetailsState extends State<chatpagedetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: [
                IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
              SizedBox(width: 5,),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Aprofile.jfif'),
                ),
                SizedBox(width: 12,),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('"Kriss Benwat',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    Text('"online',style: TextStyle(fontSize: 13,color: Colors.grey.shade600),)
                  ],
                )),
                Icon(Icons.settings,color: Colors.black54,)
              ],
            ),
          ),),
      ),
    );
  }
}
