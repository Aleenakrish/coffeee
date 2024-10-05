import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.cyan,
        child:ListView(
          children: [
            Container(
            child:         
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            
                children: [
                  SizedBox(height: 70,),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromARGB(255, 255, 253, 253),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Colors.grey,
                        )
                      ]
                    ),
                    child: Icon(Icons.person,size: 50,),
                  ),
                  SizedBox(height: 50,),
                  Row(
                      children: [
                        SizedBox(height: 30,),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.person),
                        ),
                        SizedBox(width: 20,),
                       Container(
                        height: 60,
                        width: 270,
                        child: Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Username",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                              
                            ),
                          )
                          ),
                       ),

                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                    children: [
                      // Container(
                      //     padding: EdgeInsets.only(left: 20),
                      //     child: Icon(Icons.person),
                      //   ),
                        SizedBox(width: 60,),
                       Container(
                        height: 60,
                        width: 270,
                        child: Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                
                              )
                              
                            ),
                          )
                          ),
                       ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        padding:EdgeInsets.only(left: 200) ,
                        child: Text("Forgot Password?",
                        style: TextStyle(
                          color: Colors.black
                        ),),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      Container(
                        
                        height: 50,
                        width: 170,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 5,
                          color: Colors.grey
                          )
                        ]
                        ),
                        child: TextButton(onPressed: (){},
                         child: Text("LOGIN",
                         style: TextStyle(
                          fontSize: 16,
                          color: Colors.black
                         ),)),
                      )
                    ],

                  ),
                  SizedBox(height: 110,),
                 Container(
                  child: Text("Or Sign Up Using"),
                 ),
                //  SizedBox(height: 5,),
                 Container(
                        
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        
                        ),
                        child: TextButton(onPressed: (){},
                         child: Text("SIGN UP",
                         style: TextStyle(
                          fontSize: 14,
                          color: Colors.black
                         ),)),
                      )
                ],
              ),
            ),
          ]
        )
        
        )
        );
  }
}