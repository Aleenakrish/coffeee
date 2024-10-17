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
  List<dynamic> data = [];

  List cart = [];
  bool _isRunning = false;

  // int index=0;
  final Flip = Hive.box("mybox");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  void addData() {
    data = Flip.get("1");
  }

  @override
  Widget build(BuildContext context) {
    int indx = int.parse(ModalRoute.of(context)?.settings.arguments as String);
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
                Row(
                  children: [
                    // Container(
                    //   margin: EdgeInsets.only(left: 20,top: 10),

                    //   height: 60,
                    //   width: 270,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(10),
                    //     color: Colors.white,
                    //     boxShadow: [
                    //       BoxShadow(
                    //         blurRadius: 5,
                    //       color: Colors. grey)
                    //     ]
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: [
                    //       SizedBox(
                    //         width: 10,),
                    //       Container(
                    //         height: 30,
                    //       width: 40,
                    //         child: Icon(Icons.search,size: 35,)),
                    //       Container(
                    //         // height: 5,
                    //         width: 170,
                    //         child: Expanded(
                    //           child:TextField(
                    //             decoration: InputDecoration(
                    //               border: InputBorder.none,
                    //               hintText: "Search...",

                    //             ),
                    //           ) ),
                    //       ),

                    //     ],
                    //   ),

                    // ),
                    SizedBox(
                      width: 10,
                    ),
                    // Container(
                    //   margin: EdgeInsets.only(top: 10),
                    //   height: 60,
                    //   width: 60,
                    //   // color: Colors.amber,
                    //   child: Icon(
                    //     Icons.qr_code_scanner,
                    //     size: 35,
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: data[indx]["brand"] != null
                      ? Text(
                          data[indx]["brand"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        )
                      : Text(
                          "",
                          style: TextStyle(fontSize: 0),
                        ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      data[indx]["description"],
                    )),

                Container(
                  height: MediaQuery.of(context).size.height * .5,
                  child: ListView.builder(
                    itemCount: data[indx]["images"].length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * .5,
                          child: Image.network(
                            data[indx]["images"][index],
                            fit: BoxFit.contain,
                          ));
                    },
                  ),
                ),
                // ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 3,
                  color: const Color.fromARGB(255, 235, 234, 234),
                ),
                SizedBox(
                  height: 20,
                ),
                // Text(data[index]["description"]),
                // SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.star,
                        size: 25,
                        color: data[indx]["rating"] >= 4
                            ? Colors.green
                            : data[indx]["rating"] > 3
                                ? Colors.yellow
                                : data[indx]["rating"] > 2
                                    ? Colors.orange
                                    : Colors.red),
                    Icon(Icons.star,
                        size: 25,
                        color: data[indx]["rating"] >= 4
                            ? Colors.green
                            : data[indx]["rating"] > 3
                                ? Colors.yellow
                                : data[indx]["rating"] > 2
                                    ? Colors.orange
                                    : Colors.grey),
                    Icon(Icons.star,
                        size: 25,
                        color: data[indx]["rating"] >= 4
                            ? Colors.green
                            : data[indx]["rating"] > 3
                                ? Colors.yellow
                                : Colors.grey),
                    Icon(Icons.star,
                        size: 25,
                        color: data[indx]["rating"] >= 4
                            ? Colors.green
                            : Colors.grey),
                    Text(
                      data[indx]["rating"].toString(),
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("rating", style: TextStyle(color: Colors.black)),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 233, 247, 233)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_downward,
                        size: 23,
                        color: Colors.green,
                      ),
                      Text(
                        data[indx]["discountPercentage"].toString(),
                        style: TextStyle(
                            color: const Color.fromARGB(255, 2, 99, 5),
                            fontSize: 16),
                      ),
                      Text(
                        "%",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 2, 99, 5),
                            fontSize: 17),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "${data[indx]["price"]}",
                        style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                          "\$ ${(data[indx]["price"] * (data[indx]["discountPercentage"]) / 100).toString()}",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Stocks left :",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      data[indx]["stock"].toString(),
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "Return policy :",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      data[indx]["returnPolicy"].toString(),
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 3,
                  color: const Color.fromARGB(255, 223, 223, 223),
                ),
                SizedBox(
                  height: 10,
                ),

                Text("Product Details",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Warranty    ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      data[indx]["warrantyInformation"].toString(),
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Text(
                      "weight      ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      data[indx]["weight"].toString(),
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Text(
                      "Availability  ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      data[indx]["availabilityStatus"].toString(),
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),

                //////////////////

                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 3,
                  color: const Color.fromARGB(255, 223, 223, 223),
                ),

                //////////////////////////////////////////////////////////////////////

                SizedBox(
                  height: 30,
                ),
                Text("REVIEWS :",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Expanded(
                      child: ListView.builder(
                    itemCount: data[indx]["reviews"].length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                              color: const Color.fromARGB(255, 223, 223, 223),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              data[indx]["reviews"][index]["reviewerName"]
                                  .toString(),
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              data[indx]["reviews"][index]["date"].toString(),
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              data[indx]["reviews"][index]["rating"].toString(),
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              data[indx]["reviews"][index]["comment"]
                                  .toString(),
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              data[indx]["reviews"][index]["reviewerEmail"]
                                  .toString(),
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      );
                    },
                  )),
                ),

                ////////////////////////////////////////////////////////////////////
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        cart.add(data[indx]);
                        Flip.put("1", cart);
                        setState(() {
                          _isRunning = true;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * .4,
                        height: 60,
                        color: Colors.white,
                        child: Center(
                            child: _isRunning
                                ? GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, "cartpage");
                                    },
                                    child: Text(
                                      "Go to cart",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ))
                                : Text("Add to cart",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .5,
                      height: 60,
                      color: Colors.amber[800],
                      child: Center(
                          child: Text(
                        "Buy now",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
