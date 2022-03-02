import 'package:flutter/material.dart';
import 'package:layout/Addtional_pages/widgetss/conversation.dart';

import 'models/chatmodels.dart';

class chatpage extends StatefulWidget {
  const chatpage({Key? key}) : super(key: key);

  @override
  _chatpageState createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {

  List<ChatUsers> chatusers= [
    ChatUsers(name: "Jane Russel", messageText: "Awesome Setup", imageURL: "images/userImage1.jpeg", time: "Now"),
    ChatUsers(name: "Glady's Murphy", messageText: "That's Great", imageURL: "images/userImage2.jpeg", time: "Yesterday"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "images/userImage3.jpeg", time: "31 Mar"),
    ChatUsers(name: "Philip Fox", messageText: "Busy! Call me in 20 mins", imageURL: "images/userImage4.jpeg", time: "28 Mar"),
    ChatUsers(name: "Debra Hawkins", messageText: "Thankyou, It's awesome", imageURL: "images/userImage5.jpeg", time: "23 Mar"),
    ChatUsers(name: "Jacob Pena", messageText: "will update you in evening", imageURL: "images/userImage6.jpeg", time: "17 Mar"),
    ChatUsers(name: "Andrey Jones", messageText: "Can you please share the file?", imageURL: "images/userImage7.jpeg", time: "24 Feb"),
    ChatUsers(name: "John Wick", messageText: "How are you?", imageURL: "images/userImage8.jpeg", time: "18 Feb"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Conversations",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.add,color: Colors.pink,size: 20,),
                          SizedBox(width: 2,),
                          Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18,right: 18,top: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  labelStyle: TextStyle(
                    color: Colors.grey.shade600),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade600,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey.shade100
                    )
                  )
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: chatusers.length,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(top: 16),

                itemBuilder: (Context, index){
                  return ConversationList(
                    name: chatusers[index].name,
                    messageText: chatusers[index].messageText,
                    imageUrl: chatusers[index].imageURL,
                    time: chatusers[index].time,
                    isMessageRead: (index == 0 || index == 3)?true:false,
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
