import 'package:flutter/material.dart';

class ID_confirmation extends StatefulWidget {
  const ID_confirmation({super.key});

  @override
  State<ID_confirmation> createState() => _ID_confirmationState();
}

class _ID_confirmationState extends State<ID_confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ID Confirmation"),
        backgroundColor: Color.fromARGB(255, 36, 69, 102),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "ID Confirmation",
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
                Image.asset(
                  "image/ID.jpg",
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
                    "Bring the driver's License in front of you and take a photo as an example: "),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "The photo should clearly show the face and your driver's License"),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "The photo must be taken in good light and in good quality "),
                SizedBox(
                  height: 20,
                ),
                Text("Photos in sunglasses are not allowed"),
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
                    Navigator.of(context).pushNamed("Driver");
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
