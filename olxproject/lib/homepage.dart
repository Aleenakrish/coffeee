import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart'as http;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final _olx=Hive.box("mybox");
  List ls =[];


  void readData() {
    if (_olx.get("1") != null) {
      ls = _olx.get("1");
    } else {
      print(ls);
    }
  }

void getData()async{
  var token=_olx.get("auth");
  var res=await http.post(Uri.parse("http://jandk.tech/api/getproducts"),
  headers: {"Authorization":" ${token}"}
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: 
               Container(
                // margin: EdgeInsets.only(left: 7, right: 7),
                child: Expanded(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 3,
                          crossAxisSpacing: 3,
                          childAspectRatio: 3 / 5,
                          crossAxisCount: 2),
                      itemCount: ls.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                        //       Navigator.pushNamed(context, "loginpage",
                        //           arguments: index.toString());
                        //       ();
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
                                  // Container(
                                  //   width: MediaQuery.of(context).size.width,
                                  //   height: 120,
                                  //   child: Image.network(
                                  //     // ls[index]["images"][0],
                                  //     // fit: BoxFit.contain,
                                  //   // ),
                                  // ),
                                  // Container(
                                  //   padding: EdgeInsets.only(left: 10),
                                  //   child: data[index]["brand"] != null
                                  //       ? Text(
                                  //           data[index]["brand"],
                                  //           style: TextStyle(
                                  //               fontWeight: FontWeight.bold,
                                  //               fontSize: 15),
                                  //         )
                                  //       : Text(
                                  //           "",
                                  //           style: TextStyle(fontSize: 0),
                                  //         ),
                                  // ),
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        ls[index]["products1"].toString(),
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                            //       Container(
                            //           padding: EdgeInsets.only(left: 10),
                            //           child: Text(
                            //             data[index]["category"],
                            //             style: TextStyle(
                            //                 color: const Color.fromARGB(
                            //                     255, 180, 180, 180)),
                            //           )),
                            //       Row(
                            //         children: [
                            //           Icon(Icons.star,
                            //               size: 25,
                            //               color: data[index]["rating"] >= 4
                            //                   ? Colors.green
                            //                   : data[index]["rating"] > 3
                            //                       ? Colors.yellow
                            //                       : data[index]["rating"] > 2
                            //                           ? Colors.orange
                            //                           : Colors.red),
                            //           Icon(Icons.star,
                            //               size: 25,
                            //               color: data[index]["rating"] >= 4
                            //                   ? Colors.green
                            //                   : data[index]["rating"] > 3
                            //                       ? Colors.yellow
                            //                       : data[index]["rating"] > 2
                            //                           ? Colors.orange
                            //                           : Colors.grey),
                            //           Icon(Icons.star,
                            //               size: 25,
                            //               color: data[index]["rating"] >= 4
                            //                   ? Colors.green
                            //                   : data[index]["rating"] > 3
                            //                       ? Colors.yellow
                            //                       : Colors.grey),
                            //           Icon(Icons.star,
                            //               size: 25,
                            //               color: data[index]["rating"] >= 4
                            //                   ? Colors.green
                            //                   : Colors.grey),
                            //           SizedBox(
                            //             width: 10,
                            //           ),
                            //         ],
                            //       ),
                            //       SizedBox(
                            //         height: 5,
                            //       ),
                            //       Row(
                            //         children: [
                            //           Icon(
                            //             Icons.arrow_downward,
                            //             size: 23,
                            //             color: Colors.green,
                            //           ),
                            //           Text(
                            //             data[index]["discountPercentage"]
                            //                 .toString(),
                            //             style: TextStyle(
                            //                 color: const Color.fromARGB(
                            //                     255, 2, 99, 5),
                            //                 fontSize: 15),
                            //           ),
                            //           Text(
                            //             "%",
                            //             style: TextStyle(
                            //                 color: const Color.fromARGB(
                            //                     255, 2, 99, 5),
                            //                 fontSize: 13),
                            //           ),
                            //           // SizedBox(width: 5,),
                            //           Container(
                            //             width: 50,
                            //             child: Text(
                            //               "\$${data[index]["price"]}",
                            //               overflow: TextOverflow.ellipsis,
                            //               style: TextStyle(
                            //                   fontSize: 13,
                            //                   decoration:
                            //                       TextDecoration.lineThrough,
                            //                   color: Colors.grey),
                            //             ),
                            //           ),
                            //           SizedBox(
                            //             width: 5,
                            //           ),
                            //           Container(
                            //             width: 52,
                            //             height: 30,
                            //             child: Text(
                            //                 "\$${(data[index]["price"] - (data[index]["price"] * (data[index]["discountPercentage"] / 100))).toString()}",
                            //                 overflow: TextOverflow.ellipsis,
                            //                 style: TextStyle(
                            //                     fontSize: 16,
                            //                     fontWeight: FontWeight.bold)),
                            //           )
                            //         ],
                            //       )
                                ],
                              ),
                            )
                            );
                      }
                      ),
                ),
        ),
      ),
    );
  }
}