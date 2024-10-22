import 'package:flutter/material.dart';
import 'package:olxproject/loginpage.dart';
import 'package:olxproject/signuppage.dart';


void main(){
  runApp(
    MaterialApp(
      home:loginpage(),
      routes: {
        "loginpage":(context)=>loginpage(),
        "signuppage":(context)=>Signuppage()
      },
    )
  );
}