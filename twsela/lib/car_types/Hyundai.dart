import 'package:flutter/material.dart';

class Hyundai extends StatefulWidget {
  const Hyundai({super.key});

  @override
  State<Hyundai> createState() => _HyundaiState();
}

class _HyundaiState extends State<Hyundai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hyundai"),
        backgroundColor: Color.fromARGB(255, 36, 69, 102),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Types of Hyundai",
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 36, 69, 102),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Form(
                child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      backgroundColor: Color.fromARGB(255, 36, 69, 102),
                      fixedSize: Size.fromWidth(300),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textStyle: TextStyle(fontSize: 50)),
                  onPressed: () {
                    Navigator.of(context).pushNamed("Car Color");
                  },
                  child: Text(
                    "Verna ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      backgroundColor: Color.fromARGB(255, 36, 69, 102),
                      fixedSize: Size.fromWidth(300),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textStyle: TextStyle(fontSize: 50)),
                  onPressed: () {
                    Navigator.of(context).pushNamed("Car Color");
                  },
                  child: Text(
                    "Accent ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      backgroundColor: Color.fromARGB(255, 36, 69, 102),
                      fixedSize: Size.fromWidth(300),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textStyle: TextStyle(fontSize: 50)),
                  onPressed: () {
                    Navigator.of(context).pushNamed("Car Color");
                  },
                  child: Text(
                    "Elantra ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      backgroundColor: Color.fromARGB(255, 36, 69, 102),
                      fixedSize: Size.fromWidth(300),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textStyle: TextStyle(fontSize: 50)),
                  onPressed: () {
                    Navigator.of(context).pushNamed("Car Color");
                  },
                  child: Text(
                    "Matrix ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      backgroundColor: Color.fromARGB(255, 36, 69, 102),
                      fixedSize: Size.fromWidth(300),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textStyle: TextStyle(fontSize: 50)),
                  onPressed: () {
                    Navigator.of(context).pushNamed("Car Color");
                  },
                  child: Text(
                    "Sonata ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
