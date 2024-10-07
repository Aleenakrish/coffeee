import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  List<dynamic>data=[];
  List ls=[
    {
      "userId",
    }

  ];

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    AddData();
  }

  void AddData()async{
    var res = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    print(res);
    print(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Text( ls[index]["userId"],)
            
            ],
          )
        ],
        
      ),
    );
  }
}