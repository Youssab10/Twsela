import 'package:flutter/material.dart';

class promotion extends StatefulWidget {
  const promotion({super.key});

  @override
  State<promotion> createState() => _promotionState();
}

class _promotionState extends State<promotion> {
  List promo = [
    {
      "Code": "TPO253",
      "Discount": "50%",
      "condition": "When trip > 35 L.E",
    },
    {
      "Code": "TPO254",
      "Discount": "35%",
      "condition": "When trip > 35 L.E",
    },
    {
      "Code": "TPO256",
      "Discount": "40%",
      "condition": "When trip > 35 L.E",
    },
    {
      "Code": "TPO258",
      "Discount": "100%",
      "condition": "When trip > 35 L.E",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 36, 69, 102),
        title: Text("Promotions "),
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
        itemCount: promo.length,
        itemBuilder: (context, i) {
          return Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black)),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                // Text(
                //   "Promo Code Number : ${[i]}",
                //   style: TextStyle(color: Colors.red, fontSize: 20),
                // ),),

                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Code : ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 36, 69, 102),
                                fontSize: 20),
                          ),
                          Text(
                            "${promo[i]['Code']}",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ])),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Discount : ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 36, 69, 102),
                                fontSize: 20),
                          ),
                          Text(
                            "${promo[i]['Discount']}",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ])),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Condition : ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 36, 69, 102),
                                fontSize: 20),
                          ),
                          Text(
                            "${promo[i]['condition']}",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ])),
              ],
            ),
          );
        },
      )),
    );
  }
}
