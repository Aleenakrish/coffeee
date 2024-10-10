import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

class TouchPage extends StatefulWidget {
  const TouchPage({super.key});

  @override
  State<TouchPage> createState() => _TouchPageState();
}

class _TouchPageState extends State<TouchPage> {
 
  List<dynamic>data=[];
  int index=0;
final Flip=Hive.box("mybox");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  void addData(){
    data=Flip.get("1");
  }
  @override
  Widget build(BuildContext context) {
    index=int.parse(ModalRoute.of(context)?.settings.arguments as String);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
         margin: EdgeInsets.only(left: 10, right: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Expanded(
            child: ListView(
              children: [
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [  

                   Container(
                      padding: EdgeInsets.only(left: 10),
                     child: 
                      data[index]["brand"]!=null?
                      Text(
                        data[index]["brand"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),):
                     Text("",style: TextStyle(fontSize: 0),),
                                
                      ), 
                      SizedBox(height: 5,),
                      Container(
                          padding: EdgeInsets.only(left: 10),
                         child: Text(
                           data[index]["description"],
                           )),

                     Container(
                      height:MediaQuery.of(context).size.height*.6,
                      child: Image.network(data[index]["images"][0],
                      fit: BoxFit.contain,
                      )),
                      

                     Container(
                      width: MediaQuery.of(context).size.width,
                      height: 3,
                      color: const Color.fromARGB(255, 235, 234, 234),
                     ),
                     SizedBox(height: 20,),
                    // Text(data[index]["description"]),
                    // SizedBox(height: 10,),
                     Row(
                      children: [
                      Icon(Icons.star,
                     size: 25,
                    color: data[index]["rating"]>=4?
                        Colors.green:data[index]["rating"]>3?
                       Colors.yellow:data[index]["rating"]>2?
                    Colors.orange:Colors.red
                   ), 
                  Icon(Icons.star,
                size: 25,
               color: data[index]["rating"]>=4?
                       Colors.green:data[index]["rating"]>3?
                     Colors.yellow:data[index]["rating"]>2?
                   Colors.orange:Colors.black
                  ),
                 Icon(Icons.star,
                size: 25,
              color: data[index]["rating"]>=4?
                 Colors.green:data[index]["rating"]>3?
                  Colors.yellow:Colors.black
                    ),
                     Icon(Icons.star,
                      size: 25,
                       color: data[index]["rating"]>=4?
              Colors.green:Colors.black
              ),
               Text(data[index]["rating"].toString(),
                style: TextStyle(color:Colors.black),),
                 SizedBox(width: 5,),
                  Text("rating",
                    style: TextStyle(color:Colors.black)
                   ),
              ],
                       ),
                  SizedBox(height: 15,),
              
              Row(
                children: [
               Icon(Icons.arrow_downward,
                size: 23,
                    
                     color: Colors.green,
                      ),
                      Text(data[index]["discountPercentage"].toString(),
                  style: TextStyle(color: const Color.fromARGB(255, 2, 99, 5),fontSize: 16),),
                Text("%",style: TextStyle(color: const Color.fromARGB(255, 2, 99, 5),fontSize: 23),),
                SizedBox(width: 10,),
               Text("${data[index]["price"]}",
                  style: TextStyle(fontSize: 20,decoration: TextDecoration.lineThrough,color: Colors.grey),),
                  SizedBox(width: 10,),
                    Text("\$${(data[index]["price"]-(data[index]["price"]*(data[index]["discountPercentage"]/100))).toString()}", 
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                      )
              ],
                       ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Stocks left :",style: TextStyle(fontSize: 15),),
                      SizedBox(width: 5,),
                       Text(data[index]["stock"].toString(),style: TextStyle(fontSize: 15),
                        )
                    ],
                  ),
                   SizedBox(height: 5,),
                  Row(
                    children: [
                      Text("Return policy :",style: TextStyle(fontSize: 15),),
                      SizedBox(width: 5,),
                       Text(data[index]["returnPolicy"].toString(),style: TextStyle(fontSize: 15),
                        )
                    ],
                  ),
                  SizedBox(height: 40,),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 50,top: 17),
                      height: 50,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber,
                        ),
                        child: Text("Add to Cart",
                        style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                  SizedBox(height: 10,),
                   Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 58,top: 17),
                      height: 50,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange,
                        ),
                        child: Text("Buy Now",
                        style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                  
                      
                      ],
                     ),
              ],
            )
          ),
      ),
    );
  }
}