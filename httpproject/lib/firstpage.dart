import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  List<dynamic>l=[];

  List ls=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AddData();
  }


  void AddData()async{
    var res= await http.get(Uri.parse('https://dummyjson.com/products'));
    print(res);
    ls.add(json.decode(res.body));

  }
 
@override
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
               Container(
                height: 700,
                width: double.infinity,
                padding: EdgeInsets.only(left: 5,right: 5),
                child: Expanded(
                  child: GridView.builder(
                    itemCount: ls.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                     itemBuilder:(context , index) {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              child:Row(
                                children: [
                                  Text(ls[index]["Brand"]),
                                ],
                              ),
                            ),

                            Container(
                              child: Text(ls[index]["images"])
                            ),
                            Container(child: Row(
                              
                            ),)
                          ],
                        ),


                      );
                     }) 
                     ),
                
               )
              ],
            ),
          ),
        ],
      ),
    );
  }
}