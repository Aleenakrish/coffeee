import 'package:coffeeshop/homepage.dart';
import 'package:coffeeshop/mainpage.dart';
import 'package:coffeeshop/pages/cartpage.dart';
import 'package:coffeeshop/pages/productpage.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()async{
  await Hive.initFlutter();
  var coffee=await Hive.openBox("mybox");
  runApp(MaterialApp(
    // home: MainPage()
    home: Homepage(),
  routes: {
    "main":(context)=>MainPage(),
    "cart":(context)=>Cartpage(),
    "product":(context)=>productpage(),
    "home":(context)=>Homepage()
  },
  ));
}