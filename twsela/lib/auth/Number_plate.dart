import 'package:flutter/material.dart';

class Number_plate extends StatefulWidget {
  const Number_plate({super.key});

  @override
  State<Number_plate> createState() => _Number_plateState();
}

class _Number_plateState extends State<Number_plate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Number Plate"),
        backgroundColor: Color.fromARGB(255, 36, 69, 102),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Number Plate",
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
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 36, 69, 102),
                              width: 3)),
                      hintText: ("Number Plate"),
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
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
                    Navigator.of(context).pushNamed("Car Info");
                  },
                  child: Text(
                    "Done ",
                    style: TextStyle(
                      fontSize: 30,
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
