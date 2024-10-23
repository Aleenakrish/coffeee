import 'package:flutter/material.dart';
import 'package:olxproject/loginpage.dart';
// import 'package:olxproject/signuppage.dart';


void main(){
  runApp(
    MaterialApp(
      home:Loginpage(),
      routes: {
        "loginpage":(context)=>Loginpage(),
        // "signuppage":(context)=>Signuppage()
      },
    )
  );
}