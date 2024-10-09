import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
 
  List<dynamic> ls = [];
  List<dynamic> data = [];
  final flip=Hive.box("mybox");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  void KeyData(){
    flip.put("1", data);
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
          margin: EdgeInsets.only(left: 5, right: 5),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 1,
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 3,
                        crossAxisSpacing: 3,
                        childAspectRatio: 2 / 5,
                        crossAxisCount: 2),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "productpage",arguments: index.toString());
                        },
                        child: 
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color.fromARGB(255, 247, 245, 245),
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
                              height: 130,
                              child: Image.network(
                                data[index]["images"][0],
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 10),
                                child: data[index]["brand"] != null
                                    ? Text(
                                        data[index]["brand"],
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    : Text(
                                        "",
                                      )),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  data[index]["title"],
                                  style: TextStyle(color: Colors.black),
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  data[index]["category"],
                                  style: TextStyle(color: Colors.grey),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                               
                                Row(
                                  children: [
                                    SizedBox(width: 5,),
                                    Icon(
                                      Icons.arrow_downward,
                                      size: 20,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      data[index]["discountPercentage"]
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // SizedBox(
                                    //   width: 3,
                                    // ),
                                    Text(
                                      "%",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      "\$${data[index]["price"]}",
                                      style: TextStyle(
                                          fontSize: 15,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey),
                                    ),
                                    // Container(
                                    //   height: 20,
                                    //   width: 50,
                                    //   child: Text("\$${(data[index]["price"]-
                                    //   (data[index]["price"]*
                                    //   (data[index]["discountpercentage"]/100))
                                    //   ).toString()
                                    //   }"),
                                    // )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    data[index]["rating"].toString(),
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.star,
                                    size: 20,
                                    color: data[index]["rating"] >= 4
                                        ? Colors.green
                                        : data[index]["rating"] > 3
                                            ? Colors.yellow
                                            : data[index]["rating"] > 2
                                                ? Colors.orange
                                                : Colors.red),
                                Icon(Icons.star,
                                    size: 20,
                                    color: data[index]["rating"] >= 4
                                        ? Colors.green
                                        : data[index]["rating"] > 3
                                            ? Colors.yellow
                                            : Colors.grey),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: data[index]["rating"] >= 4
                                      ? Colors.green
                                      : Colors.grey,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  data[index]["shippingInformation"],
                                  style: TextStyle(color: Colors.black),
                                )),
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.amber),
                                child: TextButton(
                                    onPressed: () {
                                      addData();
                                      setState(() {
                                        ls.add(data[index]);
                                      });
                                    },
                                    child: Text(
                                      "Add to cart",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            )
                          ],
                        ),
                      )
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}