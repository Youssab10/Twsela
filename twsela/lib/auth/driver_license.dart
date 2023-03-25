import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Driver_license extends StatefulWidget {
  const Driver_license({super.key});

  @override
  State<Driver_license> createState() => _Driver_licenseState();
}

class _Driver_licenseState extends State<Driver_license> {
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Driver License"),
        backgroundColor: Color.fromARGB(255, 36, 69, 102),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Driver License",
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
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 36, 69, 102),
                                    width: 3)),
                            hintText: ("Driver License Number "),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Front photo of Driver's License",
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
                        "Back photo of Driver's License",
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
                        "Date of expiration",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: dateInput,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 36, 69, 102),
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
                            String formattedDate =
                                DateFormat('MM-yyy').format(pickedDate);
                            print(formattedDate);
                            setState(() {
                              dateInput.text = formattedDate;
                            });
                          } else {}
                        },
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
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
