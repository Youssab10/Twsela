import 'package:flutter/material.dart';

class SignUp_Driver extends StatefulWidget {
  const SignUp_Driver({super.key});

  @override
  State<SignUp_Driver> createState() => _SignUp_DriverState();
}

class _SignUp_DriverState extends State<SignUp_Driver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 36, 69, 102),
          title: Text("Sign UP"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Form(
                  child: Column(
                children: [
                  Text(
                    "Sign up Driver",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 36, 69, 102),
                    ),
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
                      Navigator.of(context).pushNamed("Basic Info");
                    },
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Text(
                        "Basic info       ",
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
                      Navigator.of(context).pushNamed("Driver License");
                    },
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Text(
                        "Driver License       ",
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
                      Navigator.of(context).pushNamed("ID confirmation");
                    },
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Text(
                        "ID confirmation",
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
                      Navigator.of(context).pushNamed("National ID");
                    },
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Text(
                        "National ID ",
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
                      Navigator.of(context)
                          .pushNamed("Criminal Records Certification");
                    },
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Text(
                        "Criminal records certification",
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
                      Navigator.of(context).pushNamed("Address");
                    },
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Text(
                        "Address",
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
                      Navigator.of(context).pushNamed("Car Info");
                    },
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Text(
                        "Car Info ",
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
                            backgroundColor: Color.fromARGB(255, 36, 67, 102),
                            fixedSize: Size.fromWidth(300),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            textStyle: TextStyle(fontSize: 50)),
                        onPressed: () {
                          Navigator.of(context).pushNamed("login");
                        },
                        child: Text(
                          "Sign Up ",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        )),
                  )
                ],
              )),
            )
          ],
        ));
  }
}
