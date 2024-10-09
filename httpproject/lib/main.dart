import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:httpproject/firstpage.dart';
import 'package:httpproject/productpage.dart';

void main()async{
  await Hive.initFlutter();
  var flip = await Hive.openBox("mybox");
  runApp(
    MaterialApp(
      home: MainPage() ,
      routes: {
        "firstpage":(context)=>MainPage(),
        "productpage":(context)=>Productpage()
      },
    )
  );
}