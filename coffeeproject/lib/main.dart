import 'package:coffeeproject/coffeepage1.dart';
import 'package:coffeeproject/mainpage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: MainPage(),
      routes: {
        "mainpage":(context)=>MainPage(),
        "coffeepage1":(context)=>Coffeepage1()
      },
    )
  );
  }