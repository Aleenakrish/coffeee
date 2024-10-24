import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:olxproject/homepage.dart';
import 'package:olxproject/loginpage.dart';
import 'package:olxproject/signuppage.dart';

void main()async{
  await Hive.initFlutter();
  var box=await Hive.openBox("mybox");
  runApp(MaterialApp(home: SignIn(),
  routes: {
    "homepage":(context)=>Homepage(),
    "signin":(context)=>SignIn(),
    "signup":(context)=>SignUp()
  },
  ));
}