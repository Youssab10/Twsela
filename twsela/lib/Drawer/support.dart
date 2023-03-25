import 'package:flutter/material.dart';

class support extends StatefulWidget {
  const support({super.key});

  @override
  State<support> createState() => _supportState();
}

class _supportState extends State<support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 36, 69, 102),
          title: Text("Support"),
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [],
                ),
              ),
            )
          ],
        ));
  }
}
