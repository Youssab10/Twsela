import 'package:flutter/material.dart';

class Criminal_records_certification extends StatefulWidget {
  const Criminal_records_certification({super.key});

  @override
  State<Criminal_records_certification> createState() =>
      _Criminal_records_certificationState();
}

class _Criminal_records_certificationState
    extends State<Criminal_records_certification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 36, 69, 102),
        title: Text("Criminal records certification"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Criminal records certification ",
            style: TextStyle(
              fontSize: 20,
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
                            "Done",
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
