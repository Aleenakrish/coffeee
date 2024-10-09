import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;

class Productpage extends StatefulWidget {
  const Productpage({super.key});

  @override
  State<Productpage> createState() => _ProductpageState();
}

class _ProductpageState extends State<Productpage> {
 
  List<dynamic>data=[];
  int index=7;
  final flip = Hive.box("mybox");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  void getData()async{
    data=flip.get("1");
   
  }
  @override
  Widget build(BuildContext context) {
    index=int.parse(ModalRoute.of(context)?.settings.arguments as String);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
         margin: EdgeInsets.only(left: 10, right: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:ListView( 
            children: [
                Column(
            children: [
                 Image.network(data[index]["images"][0]),
                 Container(
                  height: 40,
                  child: Divider()),
                Text(data[index]["description"])
            ],
          ),
            ]
          )
      ),
    );
  }
}