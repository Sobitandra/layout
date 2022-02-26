import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  bool Buttoncolor = false;
  bool Buttoncolor1 = false;
  bool Buttoncolor2= false;
  bool Buttoncolor3 = false;
  bool Buttoncolor4 = false;
  bool Buttoncolor5 = false;
  bool Buttoncolor6 = false;
  bool Buttoncolor7 = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff686b),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          actions: [
            Icon(Icons.notifications,size: 30,),
            SizedBox(width: 10,),
            Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 4.0, style: BorderStyle.solid),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/mag.jpeg')
              )
          ),
        ),
            SizedBox(width: 10,),
          ],
          backgroundColor: Color(0xffff686b),
          elevation: 0.0,
          title: Text('Booking Product',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text('Select Date and Time',
                      style: TextStyle(color: Colors.white,
                          fontSize: 26,fontWeight: FontWeight.bold),),
                    Text('Lorem ipsum, or lipsum as',style: TextStyle(color: Colors.white,fontSize: 18),),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 660,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(55),topRight: Radius.circular(55))
                      ),
                        child: TableCalendar(
                          calendarFormat: CalendarFormat.month,
                            focusedDay: DateTime.now(),
                            firstDay: DateTime(2020),
                            lastDay: DateTime(2023),
                        )),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  onPressed: (){
                                    setState(() {
                                      Buttoncolor=!Buttoncolor;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Buttoncolor ? Color(0xffea1a20) : Color(0xffffffff),
                                    elevation: 0.0
                                  ),
                                  child: Container(
                                child: Text('8:30 AM',style: TextStyle(
                                  color: Buttoncolor ? Colors.white : Colors.black
                                ),),
                              )),
                              ElevatedButton(
                                  onPressed: (){
                                    setState(() {
                                      Buttoncolor1=!Buttoncolor1;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Buttoncolor1 ? Color(0xffea1a20) : Color(0xffffffff),
                                      elevation: 0.0
                                  )
                                  child: Container(
                                    child: Text('9:00 AM',style: TextStyle(
                                        color: Buttoncolor1 ? Colors.white : Colors.black
                                    ),),
                                  )),
                              ElevatedButton(
                                  onPressed: (){
                                    setState(() {
                                      Buttoncolor2=!Buttoncolor2;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Buttoncolor2 ? Color(0xffea1a20) : Color(0xffffffff),
                                      elevation: 0.0
                                  ),
                                  child: Container(
                                    child: Text('9:30 AM',style: TextStyle(
                                        color: Buttoncolor2 ? Colors.white : Colors.black
                                    ),),
                                  )),
                              ElevatedButton(
                                  onPressed: (){
                                    setState(() {
                                      Buttoncolor3=!Buttoncolor3;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Buttoncolor3 ? Color(0xffea1a20) : Color(0xffffffff),
                                      elevation: 0.0
                                  ),
                                  child: Container(
                                    child: Text('10:00 AM',style: TextStyle(
                                        color: Buttoncolor3 ? Colors.white : Colors.black
                                    ),),
                                  )),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    onPressed: (){
                                      setState(() {
                                        Buttoncolor=!Buttoncolor;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Buttoncolor ? Color(0xffea1a20) : Color(0xffffffff),
                                        elevation: 0.0
                                    ),
                                    child: Container(
                                      child: Text('10:30 AM',style: TextStyle(
                                          color: Buttoncolor ? Colors.white : Colors.black
                                      ),),
                                    )),
                                ElevatedButton(
                                    onPressed: (){
                                      setState(() {
                                        Buttoncolor=!Buttoncolor;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Buttoncolor ? Color(0xffea1a20) : Color(0xffffffff),
                                        elevation: 0.0
                                    ),
                                    child: Container(
                                      child: Text('11:00 AM',style: TextStyle(
                                          color: Buttoncolor ? Colors.white : Colors.black
                                      ),),
                                    )),
                                ElevatedButton(
                                    onPressed: (){
                                      setState(() {
                                        Buttoncolor=!Buttoncolor;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Buttoncolor ? Color(0xffea1a20) : Color(0xffffffff),
                                        elevation: 0.0
                                    ),
                                    child: Container(
                                      child: Text('11:30 AM',style: TextStyle(
                                          color: Buttoncolor ? Colors.white : Colors.black
                                      ),),
                                    )),
                                ElevatedButton(
                                    onPressed: (){
                                      setState(() {
                                        Buttoncolor=!Buttoncolor;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Buttoncolor ? Color(0xffea1a20) : Color(0xffffffff),
                                        elevation: 0.0
                                    ),
                                    child: Container(
                                      child: Text('12:00 AM',style: TextStyle(
                                          color: Buttoncolor ? Colors.white : Colors.black
                                      ),),
                                    )),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      width: 340,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffea1a20)
                        ),
                        child: Text('CONFIRM',style: TextStyle(color: Colors.white,fontSize: 22),),
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
