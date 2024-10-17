
import 'package:blood/secondpage.dart';
import 'package:blood/thirdpage.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: SecondPage(),
    routes: {
      // "/firstPage":(context)=>FirstPage(),
      "/secondPage":(context)=>SecondPage(),
      "/thirdPage":(context)=>ThirdPage()
    },
  ));
}