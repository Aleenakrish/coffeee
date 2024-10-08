import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final _coffee = Hive.box("mybox");
  List ls = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData();
  }

  void readData() {
    if (_coffee.get("1") != null) {
      ls = _coffee.get("1");
    } else {
      print(ls);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "COFFEE HOUSE",
            style: TextStyle(
                // fontFamily: "edu",
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20),
          ),
        ),
      ),
      body: Column(
        children: [
          // Text(
          //   "the",
          //   style: TextStyle(
          //     fontFamily: "Pro",
          //     color: const Color.fromARGB(255, 255, 170, 59),
          //     fontSize: 25,
          //   ),
          // ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: ls.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        EdgeInsets.only(bottom: 5, top: 5, left: 10, right: 10),
                    padding: EdgeInsets.only(left: 10, top: 10),
                    width: MediaQuery.of(context).size.width * .9,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            // offset: Offset(5, 5),
                            color: Colors.grey)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child:  Image.asset(
                              ls[index]["image"],
                              fit: BoxFit.contain,
                              width: 130,
                              height: 130,
                            ),
                              ),
                            ),
                            // Image.asset(
                            //   ls[index]["image"],
                            //   fit: BoxFit.contain,
                            //   width: 100,
                            //   height: 100,
                            // ),
                            Column(
                              children: [
                                Text(
                                  ls[index]["name"],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  // padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "With Chocolate",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "₹${(ls[index]["price"]*ls[index]["qty"]
                                 
                                  )}",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (ls[index]["qty"] <= 0) {
                                    null;
                                  } else {
                                    ls[index]["qty"]--;
                                  }
                                });
                              },
                              child: Text(
                                "-",
                                style: TextStyle(
                                    fontSize: 35, color: Colors.black),
                              ),
                            ),
                            Text(
                              ls[index]["qty"].toString(),
                              style: TextStyle(color: Colors.black),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  ls[index]["qty"]++;
                                });
                              },
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}