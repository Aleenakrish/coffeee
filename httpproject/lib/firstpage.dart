import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<dynamic> ls = [];
  List<dynamic> data = [];
  final Flip = Hive.box("mybox");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  void keyData() {
    Flip.put("1", data);
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
        backgroundColor: const Color.fromARGB(255, 255, 254, 254),
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   actions: [
        //     GestureDetector(
        //       onTap: () {
        //         Navigator.pushNamed(context, "cartpage");
        //       },
        //     )
        //   ],
        // ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 50),
                    height: 60,
                    width: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 1, color: Colors.grey)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 30,
                            width: 40,
                            child: Icon(
                              Icons.search,
                              size: 35,
                            )),
                        Container(
                          // height: 5,
                          width: 170,
                          child: Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search...",
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 40),
                      height: 60,
                      width: 60,
                      // color: Colors.amber,
                      child: 
                      GestureDetector(
                        onTap: () {
                Navigator.pushNamed(context, "cartpage");
              },
                          // onPressed: () {
                          //   // if(Flip.get(11!=null))
                          //   Navigator.pushNamed(context, "cartpage");
                          // },
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.black,
                            size: 30,
                          ))),
                ],
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                // margin: EdgeInsets.only(left: 7, right: 7),
                child: Expanded(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 3,
                          crossAxisSpacing: 3,
                          childAspectRatio: 3 / 5,
                          crossAxisCount: 2),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "productpage",
                                  arguments: index.toString());
                              keyData();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                      color: const Color.fromARGB(
                                          255, 201, 200, 200),
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
                                    child: data[index]["brand"] != null
                                        ? Text(
                                            data[index]["brand"],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )
                                        : Text(
                                            "",
                                            style: TextStyle(fontSize: 0),
                                          ),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        data[index]["title"],
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        data[index]["category"],
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 180, 180, 180)),
                                      )),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          size: 25,
                                          color: data[index]["rating"] >= 4
                                              ? Colors.green
                                              : data[index]["rating"] > 3
                                                  ? Colors.yellow
                                                  : data[index]["rating"] > 2
                                                      ? Colors.orange
                                                      : Colors.red),
                                      Icon(Icons.star,
                                          size: 25,
                                          color: data[index]["rating"] >= 4
                                              ? Colors.green
                                              : data[index]["rating"] > 3
                                                  ? Colors.yellow
                                                  : data[index]["rating"] > 2
                                                      ? Colors.orange
                                                      : Colors.grey),
                                      Icon(Icons.star,
                                          size: 25,
                                          color: data[index]["rating"] >= 4
                                              ? Colors.green
                                              : data[index]["rating"] > 3
                                                  ? Colors.yellow
                                                  : Colors.grey),
                                      Icon(Icons.star,
                                          size: 25,
                                          color: data[index]["rating"] >= 4
                                              ? Colors.green
                                              : Colors.grey),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_downward,
                                        size: 23,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        data[index]["discountPercentage"]
                                            .toString(),
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 2, 99, 5),
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "%",
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 2, 99, 5),
                                            fontSize: 13),
                                      ),
                                      // SizedBox(width: 5,),
                                      Container(
                                        width: 50,
                                        child: Text(
                                          "\$${data[index]["price"]}",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 13,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        width: 52,
                                        height: 30,
                                        child: Text(
                                            "\$${(data[index]["price"] - (data[index]["price"] * (data[index]["discountPercentage"] / 100))).toString()}",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ));
                      }),
                ),
              )
            ],
          ),
        ));
  }
}
