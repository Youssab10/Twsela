import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class googlemap extends StatefulWidget {
  const googlemap({super.key});

  @override
  State<googlemap> createState() => _googlemapState();
}

class _googlemapState extends State<googlemap> {
  Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 36, 69, 102),
          title: Text("Login"),
          centerTitle: true,
        ),
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
                  // arrowColor: Colors.black,
                  currentAccountPicture: CircleAvatar(
                    child: Image.asset("image/profile.jpg"),
                  ),
                  otherAccountsPicturesSize: Size(100, 100),
                  // onDetailsPressed: () {
                  //   Navigator.of(context).pushNamed("profile");
                  // },
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
                  children: [
                    Container(
                      height: 500,
                      width: double.infinity,
                      child: GoogleMap(
                        mapType: MapType.normal,
                        initialCameraPosition: _kGooglePlex,
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
// AIzaSyARorFQBpw4AY9nJY7opBT2F6Z0kqab5Qg