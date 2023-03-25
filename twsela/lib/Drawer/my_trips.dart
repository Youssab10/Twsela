import 'dart:js_util';

import 'package:flutter/material.dart';

class My_trip extends StatefulWidget {
  const My_trip({super.key});

  @override
  State<My_trip> createState() => _My_tripState();
}

class _My_tripState extends State<My_trip> {
  List trips = [
    {
      "From": "shobra",
      "To": "shorouk",
      "Driver_name": "ahmed",
      "time": "10:00",
      "Date": "21/9/2022",
      "Price": "200",
      "Action": "Done"
    },
    {
      "From": "madienty",
      "To": "nasr city",
      "Driver_name": "ali",
      "time": "1:00",
      "Date": "21/9/2022",
      "Price": "250",
      "Action": "canceled"
    },
    {
      "From": "fasil",
      "To": "Rokxy",
      "Driver_name": "mohammed",
      "time": "10:00",
      "Date": "21/9/2022",
      "Price": "300",
      "Action": "Done"
    },
    {
      "From": "shobra",
      "To": "shorouk",
      "Driver_name": "Eslam",
      "time": "12:00",
      "Date": "21/9/2022",
      "Price": "80",
      "Action": "cancled"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 36, 69, 102),
        title: Text("My Trips"),
        centerTitle: true,
      ),
      drawerScrimColor: Color.fromARGB(255, 36, 69, 102).withOpacity(0.5),
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color.fromARGB(255, 36, 69, 102),
                      Colors.black
                    ])),
                accountEmail: Text(""),
                accountName: Text(
                  "Youssab Youssef",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                arrowColor: Colors.black,
                currentAccountPicture: CircleAvatar(
                  child: Image.asset("image/profile.jpg"),
                ),
                otherAccountsPicturesSize: Size(100, 100),
                onDetailsPressed: () {
                  Navigator.of(context).pushNamed("profile");
                },
              ),
              ListTile(
                title: Text("Home",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 36, 69, 102),
                    )),
                leading: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 36, 69, 102),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("googlemap");
                },
              ),
              ListTile(
                title: Text("Setting",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 36, 69, 102),
                    )),
                leading: Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 36, 69, 102),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("setting");
                },
              ),
              ListTile(
                title: Text("Support",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 36, 69, 102),
                    )),
                leading: Icon(
                  Icons.headset_mic,
                  color: Color.fromARGB(255, 36, 69, 102),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("support");
                },
              ),
              ListTile(
                title: Text("My trips",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 36, 69, 102),
                    )),
                leading: Icon(
                  Icons.assignment_sharp,
                  color: Color.fromARGB(255, 36, 69, 102),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("my_trips");
                },
              ),
              ListTile(
                title: Text("Promotion",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 36, 69, 102),
                    )),
                leading: Icon(
                  Icons.discount,
                  color: Color.fromARGB(255, 36, 69, 102),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("promotion");
                },
              ),
              ListTile(
                title: Text("Logout",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 36, 69, 102),
                    )),
                leading: Icon(
                  Icons.exit_to_app,
                  // size: 30,
                  color: Color.fromARGB(255, 36, 69, 102),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("login");
                },
              )
            ],
          ),
        ),
      )),
      body: Container(
          child: ListView.separated(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, i) {
          return Divider(
            color: Colors.white,
            height: 2,
            thickness: 2,
          );
        },
        itemCount: trips.length,
        itemBuilder: (context, i) {
          return Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black)),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                // Text(
                //   "Trip Number : ${[i]}",
                //   style: TextStyle(color: Colors.red, fontSize: 20),
                // ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Twsela ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "EGP ${trips[i]['Price']} ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ])),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("${trips[i]['Date']}",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                                Text(","),
                                Text(
                                  "${trips[i]['time']}",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  " ${trips[i]['Action']} ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ])),
                      Container(
                        child: Text(
                          "${trips[i]["From"]} ",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        "${trips[i]["To"]} ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      )),
    );
  }
}
