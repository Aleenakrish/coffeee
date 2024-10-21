import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
   List<dynamic> data = [];

  final Flip = Hive.box("mybox");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  void addData() {
    data = Flip.get("2");
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("My Cart",style: TextStyle(fontSize: 20),),
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 210,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.grey,
                  // offset: Offset(5, 5)
                )
              ]
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20,left: 10),
                      width: 90,
                      height: 90,
                      
                      decoration: BoxDecoration(
                        border: Border.all(
                          color:const Color.fromARGB(255, 219, 217, 217)),
                      ),
                      child: Column(
                        children: [
                          Image.network(
                          data[index]["images"][0],
                          fit: BoxFit.contain,
                          ),
                         
                        ],
                      
                    
                      ),
                      
                    ),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 13),
                      height: 25,
                      width: 90,
                      
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 219, 217, 217)),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Text("Qty : 1"),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_drop_down,color: Colors.black,)
                        ],
                      )
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 270,
                      margin: EdgeInsets.only(top: 20,left: 10),
                      child: Text(data[index]["title"],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 19,letterSpacing: 1,  
                      // fontWeight: FontWeight.bold
                      ),
                        ),
                      ),                        
                      SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(width: 9),
                    Icon(Icons.star,
                        size: 23,
                        color: data[index]["rating"] >= 4
                            ? Colors.green
                            : data[index]["rating"] > 3
                                ? Colors.yellow
                                : data[index]["rating"] > 2
                                    ? Colors.orange
                                    : Colors.red),
                    Icon(Icons.star,
                        size: 23,
                        color: data[index]["rating"] >= 4
                            ? Colors.green
                            : data[index]["rating"] > 3
                                ? Colors.yellow
                                : data[index]["rating"] > 2
                                    ? Colors.orange
                                    : Colors.grey),
                    Icon(Icons.star,
                        size: 23,
                        color: data[index]["rating"] >= 4
                            ? Colors.green
                            : data[index]["rating"] > 3
                                ? Colors.yellow
                                : Colors.grey),
                    Icon(Icons.star,
                        size: 23,
                        color: data[index]["rating"] >= 4
                            ? Colors.green
                            : Colors.grey),
                            SizedBox(width: 5,),
                   Text(
                      data[index]["rating"].toString(),
                      style: TextStyle(
                          color: const Color.fromARGB(255, 7, 132, 235)),
                    ),
                    ],
                  ),
                   SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(width: 9),
                    Icon(
                      Icons.arrow_downward,
                      size: 23,
                      color: Colors.green,
                    ),
                    Text(
                      data[index]["discountPercentage"].toString(),
                      style: TextStyle(
                          color: const Color.fromARGB(255, 2, 99, 5),
                          fontSize: 17),
                    ),
                    Text(
                      "%",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 2, 99, 5),
                          fontSize: 18),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${data[index]["price"]}",
                      style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width:80,
                      height: 30,
                      child: Text(
                            "\$${(data[index]["price"] * (data[index]["discountPercentage"]) / 100).toString()}",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),SizedBox(height: 10,),
                 Container(
                  padding: EdgeInsets.only(left: 20),
                   child: Text(data[index]["availabilityStatus"].toString(),
                          style: TextStyle(
                            fontSize: 15,color: Colors.pink[800]
                          )),
                 ),
                ],
              )
          ]));
          },
        ),
      )
    );
  }
}