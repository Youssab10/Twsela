import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
        backgroundColor: Color.fromARGB(255, 36, 69, 102),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "image/Logo2.png",
            width: 200,
            height: 200,
          ),
          SizedBox(
            height: 20,
          ),
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
                      hintText: ("E-mail or Phone Number "),
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
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
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("If you don't have account"),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("Welcome");
                        },
                        child: Text(
                          "  Click Here",
                          style: TextStyle(
                              color: Color.fromARGB(255, 36, 69, 102)),
                        ),
                      )
                    ],
                  ),
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
                      Navigator.of(context).pushNamed("googlemap");
                    },
                    child: Text(
                      "Login",
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
