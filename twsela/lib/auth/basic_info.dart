import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Basic_info extends StatefulWidget {
  const Basic_info({super.key});

  @override
  State<Basic_info> createState() => _Basic_infoState();
}

class _Basic_infoState extends State<Basic_info> {
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
        title: Text("Basic Info"),
        backgroundColor: Color.fromARGB(255, 36, 69, 102),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Basic Info",
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
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Color.fromARGB(255, 36, 69, 102),
                  ),
                  child: Image.asset(
                    "image/profile.jpg",
                    height: 200.0,
                    width: 400.0,
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
                      hintText: ("First Name "),
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
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
                      hintText: ("Last Name"),
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
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
                      hintText: ("E-mail"),
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Date of birth ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 36, 69, 102),
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: 50,
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
                                DateFormat('dd-MM-yyy').format(pickedDate);
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
                      Navigator.of(context).pushNamed("Driver");
                    },
                    child: Text(
                      "Done ",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
