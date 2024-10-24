import 'package:flutter/material.dart';
import 'package:olx/olxp/homepage.dart';
import 'package:olx/olxp/loginpage.dart';
import 'package:olx/olxp/signuppage.dart';

void main(){
  runApp(MaterialApp(home: SignIn(),
  routes: {
    "homepage":(context)=>Homepage(),
    "loginpage":(context)=>SignIn(),
    "signup":(context)=>SignUp()
  },
  ));
}