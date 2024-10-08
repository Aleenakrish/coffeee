import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<dynamic> ls = [];
  List<dynamic> data = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  void addData() async {
    var res = await http.get(Uri.parse("https://dummyjson.com/products"));

   
    ls.add(jsonDecode(res.body));
     setState(() {
       data = ls[0]["products"];
    });
   
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        // ),
        body: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            // Container(
            //     child: Row(
            //       children: [
            //         // Icon(Icons.search),
            //         Container(
            //           height: 100,
            //           child: Expanded(
                        
            //             child: TextField(
            //               decoration:InputDecoration(
            //                 // border: InputBorder.none
            //               ) ,
            //             )),
                      
            //         )
                  
                   
            //       ],
            //     ),
            //   ),
              SizedBox(height: 10,),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 3,
                        crossAxisSpacing: 3,
                        childAspectRatio: 2/ 4,
                        crossAxisCount: 2
                        ),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey,
                                  // offset: Offset(5, 5)
                                  )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 120,
                              child: Image.network(
                                data[index]["images"][0],
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                data[index]["brand"],
                                style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                             SizedBox(height: 5,),
                            Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(data[index]["category"],
                                style: TextStyle(color: Colors.grey),
                                )
                                ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                SizedBox(width: 10,),
                                // Container(
                                //     padding: EdgeInsets.only(left: 10),
                                    Text("\$",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,fontSize: 16),),

                                      // .

                                      SizedBox(width: 10,),
                                    Text(
                                      data[index]["price"].toString(),
                                      style: TextStyle(fontSize: 17,
                                      fontWeight: FontWeight.bold
                                      ),
                                    ),

                                    // SizedBox(width: 20,),
                                    //  Text(data[index]["discountPercentage"].toString(),
                                    //   style: TextStyle(fontSize: 17,
                                    //   fontWeight: FontWeight.bold
                                    //   ),
                                    //   ),

                                  
                                    // ),
                              ],
                            ),
                            
                                SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child:Text(data[index]["rating"].toString(),
                                  style: TextStyle(fontSize:18),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: const Color.fromARGB(255, 56, 134, 59),),
                                    Icon(Icons.star,color: const Color.fromARGB(255, 56, 134, 59),),
                                    Icon(Icons.star,color: const Color.fromARGB(255, 56, 134, 59),),
                                    Icon(Icons.star_border_outlined,color: Colors.grey,)
                                      
                                    
                                  ],
                                )
                              ],
                            )
                            
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}