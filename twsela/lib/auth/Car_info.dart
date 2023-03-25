import 'package:flutter/material.dart';

class Car_info extends StatefulWidget {
  const Car_info({super.key});

  @override
  State<Car_info> createState() => _Car_infoState();
}

class _Car_infoState extends State<Car_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 36, 69, 102),
        title: Text("Car Info"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Car Info",
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
                      fixedSize: Size.fromWidth(600),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textStyle: TextStyle(fontSize: 50)),
                  onPressed: () {
                    Navigator.of(context).pushNamed("car type");
                  },
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      "Car type",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox.square(dimension: 4),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      backgroundColor: Color.fromARGB(255, 36, 69, 102),
                      fixedSize: Size.fromWidth(600),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textStyle: TextStyle(fontSize: 50)),
                  onPressed: () {
                    Navigator.of(context).pushNamed("number plate");
                  },
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      "Number Plate ",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox.square(dimension: 4),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      backgroundColor: Color.fromARGB(255, 36, 69, 102),
                      fixedSize: Size.fromWidth(600),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textStyle: TextStyle(fontSize: 50)),
                  onPressed: () {
                    Navigator.of(context).pushNamed("car License");
                  },
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      "Car License",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox.square(dimension: 4),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      backgroundColor: Color.fromARGB(255, 36, 69, 102),
                      fixedSize: Size.fromWidth(600),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textStyle: TextStyle(fontSize: 50)),
                  onPressed: () {
                    Navigator.of(context).pushNamed("photo of car");
                  },
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      "Photo of your car  ",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox.square(dimension: 4),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(15),
                          backgroundColor: Color.fromARGB(255, 36, 69, 102),
                          fixedSize: Size.fromWidth(300),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textStyle: TextStyle(fontSize: 50)),
                      onPressed: () {
                        Navigator.of(context).pushNamed("Driver");
                      },
                      child: Text(
                        "Done ",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      )),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
