import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
// import 'package:lottie/lottie.dart';

class productpage extends StatefulWidget {
  const productpage({super.key});

  @override
  State<productpage> createState() => _productpageState();
}

class _productpageState extends State<productpage> {
   final _coffee = Hive.box("mybox");
  List cart = [];
  List ls = [
    {
      "name": "Black Coffee",
      "price": 20,
      "image": "./images/bb.jpg",
      "qty": 0
    },
    {
      "name": "Cappuccino",
      "price": 140,
      "image": "./images/coffee.jpeg",
      "qty": 0
    },
    {
      "name": "creamy ice coffee",
      "price": 180,
      "image": "./images/ice.jpg",
      "qty": 0
    },
    {
      "name": "Americano",
      "price": 200,
      "image": "./images/ame.jpeg",
      "qty": 0
    },
    {
      "name": "Cappuccino latte",
      "price": 250,
      "image": "./images/latte.jpg",
      "qty": 0
    },
    {
      "name": "Black Tea",
      "price": 25,
      "image": "./images/black.jpg",
      "qty": 0
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "COFFEE HOUSE",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color:Colors.black,
                fontSize: 20),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),color: Colors.grey
            ),
            child: 
          TextField(
            decoration: InputDecoration(
              hintText: "Search Coffee"
            ),
          ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2 / 3,
                  crossAxisCount: 2),
              itemCount: ls.length,
              padding: EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey,
                            offset: Offset(5, 5))
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                          ls[index]["image"],
                          width: 150,
                          height: 150,
                        ),
                        )
                        
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            ls[index]["name"],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "With chocolate",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "₹${ls[index]["price"]}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color.fromARGB(255, 255, 170, 59)),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    ls[index]["qty"]++;
                                    if (ls[index]["qty"] > 1) {
                                      ls[index]["qty"]--;
                                    } else {
                                      cart.add(ls[index]);
                                    }
                                    print(_coffee.get("1"));
                                    _coffee.put("1", cart);
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );  
    
  }
}