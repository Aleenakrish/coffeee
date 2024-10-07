import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center( 
          child: Text("HOME PAGE",
          style: TextStyle(
            color: Colors.blue
          ),)),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            
               Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(

                    height: 175,
                    width:double.infinity,
                    color: const Color.fromARGB(255, 113, 168, 212),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 95, 154, 194)
                        ),
                        child: Center(
                          child: Text("AL",
                          style: TextStyle(
                            fontSize:20,
                            color:  Colors.white),
                          ),
                        ),
                     ),
                      SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Aleena krishna",
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.bold,
                      color:  Colors.white),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("+91 7306489749",
                          style: TextStyle(fontSize:12,color:  Colors.blue[50]),
                          ),
                        ),
                        SizedBox(width: 120,),
                        Container(
                          child: TextButton(onPressed: (){}, 
                          child: Icon(Icons.keyboard_arrow_down))
                        )
                      ],
                    ),
                  )
                     
                      ],
                    ) ,
                  ),
                 
                 
                ],
              
            )
          ]
          
        ),
        
      ),
    );
  }
}