import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:olxproject/olxp/homepage.dart';
import 'package:olxproject/olxp/loginpage.dart';
import 'package:olxproject/olxp/signuppage.dart';

void main()async{
  await Hive.initFlutter();
  var box=await Hive.openBox("mybox");
  runApp(MaterialApp(home: SignIn(),
  routes: {
    "homepage":(context)=>Homepage(),
    "login":(context)=>SignIn(),
    "signup":(context)=>SignUp()
  },
  ));
}