import 'package:flutter/material.dart';

class Car_License extends StatefulWidget {
  const Car_License({super.key});

  @override
  State<Car_License> createState() => _Car_LicenseState();
}

class _Car_LicenseState extends State<Car_License> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Car License"),
        backgroundColor: Color.fromARGB(255, 36, 69, 102),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Car License",
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 36, 69, 102),
            ),
          ),
          Container(
            height: 700,
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  padding: EdgeInsets.all(30),
                  child: Form(
                      child: Column(
                    children: [
                      Text(
                        "Front photo of Car's License",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        "image/certification.jpg",
                        height: 200.0,
                        width: 400.0,
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
                        onPressed: () {},
                        child: Text(
                          "ADD Photo ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Back photo of Car's License",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        "image/certification.jpg",
                        height: 200.0,
                        width: 400.0,
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
                        onPressed: () {},
                        child: Text(
                          "ADD Photo ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 36, 69, 102),
                                    width: 3)),
                            hintText: ("Transport year"),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
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
                            textStyle: TextStyle(fontSize: 30)),
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
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
