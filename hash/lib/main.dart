import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
     home: Scaffold(
      body: myapp(),
     ),
      
    )
  );
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {

  TextEditingController _cnt = TextEditingController();

  void hashpwd(){
    print(_cnt.text);

   var x = hashpassword(_cnt.text);
   print(x);
  }
String hashpassword(String pwd){
  var byte = utf8.encode(pwd);
  print(byte);
  var data = sha256.convert(byte);
  return data.toString();
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _cnt,

            ),ElevatedButton(onPressed: hashpwd,
            child: Text("convert"))
          ],
        ),
      ) );
  }
}



