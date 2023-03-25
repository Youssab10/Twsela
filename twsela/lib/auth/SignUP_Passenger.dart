import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class SignUP_Passenger extends StatefulWidget {
  const SignUP_Passenger({super.key});

  @override
  State<SignUP_Passenger> createState() => _SignUP_PassengerState();
}

class _SignUP_PassengerState extends State<SignUP_Passenger> {
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  bool Male = false;
  bool Female = false;
  bool gender = false;
  var Date;
  var Month;
  var Year;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign UP"),
        backgroundColor: Color.fromARGB(255, 36, 69, 102),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sign Up Passenger",
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 36, 69, 102),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 700,
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  padding: EdgeInsets.all(30),
                  child: Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 36, 69, 102),
                                    width: 3)),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color.fromARGB(255, 36, 69, 102),
                            ),
                            hintText: ("Username "),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
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
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Color.fromARGB(255, 36, 69, 102),
                            ),
                            hintText: ("E-mail"),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
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
                            prefixIcon: Icon(
                              Icons.card_membership,
                              color: Color.fromARGB(255, 36, 69, 102),
                            ),
                            hintText: ("National ID"),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
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
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Color.fromARGB(255, 36, 69, 102),
                            ),
                            hintText: ("Phone Number"),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 36, 69, 102),
                                    width: 3)),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 36, 69, 102),
                            ),
                            hintText: ("Password"),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 36, 69, 102),
                                    width: 3)),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 36, 69, 102),
                            ),
                            hintText: ("Re-password"),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
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
                            prefixIcon: Icon(
                              Icons.home,
                              color: Color.fromARGB(255, 36, 69, 102),
                            ),
                            hintText: ("Address"),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "Gender:- ",
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 69, 102),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Checkbox(
                                value: Male,
                                onChanged: (val) {
                                  setState(() {
                                    Male = val.toString() as bool;
                                  });
                                }),
                            Text("Male"),
                            SizedBox(
                              width: 50,
                            ),
                            Checkbox(
                                value: Female,
                                onChanged: (value) {
                                  setState(() {
                                    Female = value.toString() as bool;
                                  });
                                }),
                            Text("Female"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Date of birth:- ",
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 69, 102),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            TextField(
                              controller: dateInput,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 36, 69, 102),
                                          width: 3)),
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: Color.fromARGB(255, 36, 69, 102),
                                  ),
                                  labelText: "Enter Date"),
                              readOnly: true,
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1950),
                                    lastDate: DateTime(2100));

                                if (pickedDate != null) {
                                  print(pickedDate);
                                  String formattedDate = DateFormat('dd-MM-yyy')
                                      .format(pickedDate);
                                  print(formattedDate);
                                  setState(() {
                                    dateInput.text = formattedDate;
                                  });
                                } else {}
                              },
                            )
                          ],
                        ),
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
                            Navigator.of(context).pushNamed("login");
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      )
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
