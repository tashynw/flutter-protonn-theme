// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Protonn Theme',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Dashboard",
          style: TextStyle(
            color: Colors.black
          ),
        )),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.grey,),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.grey,),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call,size: 35,color: Colors.grey,),
            label: "VideoCall",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month,color: Colors.grey,),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined,color: Colors.grey,),
            label: "Menu",
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.only(left: 10, top: 20, right: 10),
          decoration: BoxDecoration(
            color: Colors.grey[50]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Starts in 5 minutes",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 20),
              //time box
              Container(
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Row(
                  children: [
                    //blue box with time and join
                    Container(
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                        color: Colors.blue
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("09:45",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(height: 7),
                          Text("Join",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      ),
                    ),
                    //blank part (resume coordination and the right icon)
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15)
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //resume consultation and info box
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Resume consultation",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  //info below resume consultation
                                  Row(
                                    children: [
                                      //container for the time
                                      Row(
                                        children: [
                                          Icon(Icons.access_time_rounded, color: Colors.grey[700],size: 15,),
                                          SizedBox(width: 5,),
                                          Text("30 min",
                                            style: TextStyle(
                                              color: Colors.grey[700],
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: 10,),
                                      //container for the author
                                      Row(
                                        children: [
                                          Icon(Icons.person_outlined, color: Colors.grey[700],size: 15,),
                                          SizedBox(width: 5,),
                                          Text("Tashyn Wallace",
                                            style: TextStyle(
                                              color: Colors.grey[700],
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500
                                            ),
                                          )
                                        ],
                                      ),
                    
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Icon(Icons.chevron_right_outlined, color: Colors.blue,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Text("Revenue",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 335,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Paid to you".toUpperCase(),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //left side of box
                          Column(
                            children: [
                              Text("This Month".toUpperCase(),
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("\$15,000",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                              ),
                              SizedBox(height: 7,),
                              Text("\$13K Last month".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green
                                ),
                              ),
                            ],
                          ),
                          //vertical space
                          VerticalDivider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                          //right side of box
                          Column(
                            children: [
                              Text("This Year".toUpperCase(),
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("\$72,000",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("Outstanding Payments".toUpperCase(),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //left side of box
                          Column(
                            children: [
                              Text("Pending Payout".toUpperCase(),
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("\$6,000",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                              ),
                            ],
                          ),
                          //vertical space
                          VerticalDivider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                          //right side of box
                          Column(
                            children: [
                              Text("Unpaid Invoices".toUpperCase(),
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("\$8,000",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                              ),
                              SizedBox(height: 7,),
                              Text("\$3K Overdue".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}