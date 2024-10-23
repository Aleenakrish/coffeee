import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController email = TextEditingController();
  TextEditingController pssword = TextEditingController();
  bool obs = true;

  Map mp = {};

  void saveData() async {
    mp = {"email": email.text, "password": pssword.text};
    var res = await http.post(Uri.parse("http://jandk.tech/api/signin"),
        headers: {"Content-Type": "application/json"}, body: jsonEncode(mp));
    print(res.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: ListView(children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 30),
            // padding: EdgeInsets.only(left: 60),
            height: 290,
            // width: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Image.asset("./images/olx.png"),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 50, right: 50),
          padding: EdgeInsets.only(left: 20),
          width: MediaQuery.of(context).size.width * .6,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey,
                )
              ]),
          child: TextField(
            controller: email,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email",
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                prefixIcon: Icon(Icons.email)),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(left: 50, right: 50),
          padding: EdgeInsets.only(left: 20),
          width: MediaQuery.of(context).size.width * .8,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10, color: Colors.grey,
                  //  offset: Offset(5, 5)
                )
              ]),
          child: TextField(
            controller: pssword,
            obscureText: obs,
            decoration: InputDecoration(
                border: InputBorder.none,
                // labelText: "Password",
                hintText: "Password",
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obs == true ? obs = false : obs = true;
                      });
                    },
                    child: Icon(Icons.remove_red_eye))),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        //   Container(
        //     margin: EdgeInsets.only(left: 20, right: 20),
        //     padding: EdgeInsets.only(left: 20),
        //     width: MediaQuery.of(context).size.width * .8,
        //     height: 60,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(10),
        //         color: const Color.fromARGB(255, 22, 216, 216),
        //         boxShadow: [
        //           BoxShadow(
        //               blurRadius: 10, color: Colors.grey, offset: Offset(5, 5))
        //         ]),
        //   )
      ]),
    );
    ;
  }
}
