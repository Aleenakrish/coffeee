import 'package:flutter/material.dart';

class productpage extends StatefulWidget {
  const productpage({super.key});

  @override
  State<productpage> createState() => _productpageState();
}

class _productpageState extends State<productpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 20, 20, 20),
      body: 
      ListView(
children: [
      
       Container(
      child: Column(
      
        children: [
      //     Center(
      //       child: Container(
      //         padding: EdgeInsets.only(top: 20),
      //         child: Text("SIP CHAT",
      //         style: TextStyle(
      //           color: const Color.fromARGB(255, 78, 48, 36),
      //           fontSize: 25,fontWeight: FontWeight.bold
      //           ),),
      //       ),
      //     ),
          // SizedBox(height: 50,),


          Container(
            child: Column(
              children: [
                Container(
                    height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(100),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color:Colors.white
                )
              ],
              color: Colors.brown
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50)
              ),
              child: Image.asset("./images/b.jpg",fit: BoxFit.cover,),

            ),
          

                ),
               

            ],)

          
          //   height: 300,
          //   width: MediaQuery.of(context).size.width,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.vertical(
          //       bottom: Radius.circular(100),
          //     ),
          //     boxShadow: [
          //       BoxShadow(
          //         blurRadius: 5,
          //         color: const Color.fromARGB(255, 100, 68, 56)
          //       )
          //     ],
          //     color: Colors.brown
          //   ),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.vertical(
          //       bottom: Radius.circular(50)
          //     ),
          //     child: Image.asset("./images/bak.jpg",fit: BoxFit.cover,),

          //   ),
          //   // child: Center(
          //   //   child: Text("SIP CHAT",
          //   //   style: TextStyle(color: Colors.white),
          //   //   )),
          ),
          SizedBox(height: 20,),

          

          // Container(
          //   child: Image.asset("")
          // ),
        Container(
          height: 170,
          width: 400,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 236, 236, 236),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,color: Colors.white
              )
            ]
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 170,
                width: 200,
                child: Image.asset("./images/coffee.jpeg",fit: BoxFit.cover,),
              ),
              Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Container(
                padding: EdgeInsets.only(top: 10,left: 20),
                child: Text("Cappuccino",style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 109, 74, 61),
                  fontWeight: FontWeight.bold
                ),),
              ),
               Row(
                 children: [
                   Container(
                    padding: EdgeInsets.only(top:20,left: 20 ),
                    child: Icon(Icons.currency_rupee,
                    size: 20,
                    color:const Color.fromARGB(255, 109, 74, 61) ,)
                  ),
                  Container(
                    padding: EdgeInsets.only(top:20,left: 10 ),
                    child: Text("300",style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 109, 74, 61),
                  fontWeight: FontWeight.bold
                ),),
                  ),
                  
                 ],
               ),
               Row(
                 children: [
                  SizedBox(width: 100,),
                  
                  Container(
                    height:30 ,
                    width: 80,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 224, 224, 224)
                    ),
                    child: TextButton(onPressed: (){},
                     child: Text("Addcart",
                     style: TextStyle(color: const Color.fromARGB(255, 109, 74, 61) ),)),
               
                  ),
                  
                 ],
               ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Icon(Icons.location_on)
                    ),
                    Container(
                padding: EdgeInsets.only(top:20,left: 10 ),
                child: Text("Sip Chat",style: TextStyle(
                  fontSize: 15,
                  color: const Color.fromARGB(255, 109, 74, 61),
                  fontWeight: FontWeight.bold
                ),),
              ),
                ],
              ),

                  ],
                ),
                
              )
            ],

          ),
          
        ),
        SizedBox(height: 10,),
         Container(
          height: 170,
          width: 400,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 236, 236, 236),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,color: Colors.white
              )
            ]
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 170,
                width: 200,
                child: Image.asset("./images/bb.jpg",fit: BoxFit.cover,),
              ),
              Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Container(
                padding: EdgeInsets.only(top: 10,left: 20),
                child: Text("Black Coffee ",style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 109, 74, 61),
                  fontWeight: FontWeight.bold
                ),),
              ),
               Row(
                 children: [
                   Container(
                    padding: EdgeInsets.only(top:20,left: 20 ),
                    child: Icon(Icons.currency_rupee,
                    size: 20,
                    color:const Color.fromARGB(255, 109, 74, 61) ,)
                  ),
                  Container(
                    padding: EdgeInsets.only(top:20,left: 10 ),
                    child: Text("40",style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 109, 74, 61),
                  fontWeight: FontWeight.bold
                ),),
                  )
                 ],
               ),
                Row(
                 children: [
                  SizedBox(width: 100,),
                  
                  Container(
                    height:30 ,
                    width: 80,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 224, 224, 224)
                    ),
                    child: TextButton(onPressed: (){},
                     child: Text("Addcart",
                     style: TextStyle(color: const Color.fromARGB(255, 109, 74, 61) ),)),
               
                  ),
                  
                 ],
               ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Icon(Icons.location_on)
                    ),
                    Container(
                padding: EdgeInsets.only(top:20,left: 10 ),
                child: Text("Sip Chat",style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 109, 74, 61),
                  fontWeight: FontWeight.bold
                ),),
              ),
                ],
              ),

                  ],
                ),
                
              )
            ],

          ),
          
        ),
        SizedBox(height: 10,),
         Container(
          height: 170,
          width: 400,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 236, 236, 236),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,color: Colors.white
              )
            ]
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 170,
                width: 200,
                child: Image.asset("./images/ice.jpg",fit: BoxFit.cover,),
              ),
              Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Container(
                padding: EdgeInsets.only(top: 10,left: 20),
                child: Text("Creamy ice coffee",style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 109, 74, 61),
                  fontWeight: FontWeight.bold
                ),),
              ),
               Row(
                 children: [
                   Container(
                    padding: EdgeInsets.only(top:20,left: 20 ),
                    child: Icon(Icons.currency_rupee,
                    size: 20,
                    color:const Color.fromARGB(255, 109, 74, 61) ,)
                  ),
                  Container(
                    padding: EdgeInsets.only(top:20,left: 10 ),
                    child: Text("190",style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 109, 74, 61),
                  fontWeight: FontWeight.bold
                ),),
                  )
                 ],
               ),
                Row(
                 children: [
                  SizedBox(width: 100,),
                  
                  Container(
                    height:30 ,
                    width: 80,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 224, 224, 224)
                    ),
                    child: TextButton(onPressed: (){},
                     child: Text("Addcart",
                     style: TextStyle(color: const Color.fromARGB(255, 109, 74, 61) ),)),
               
                  ),
                  
                 ],
               ),
             
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Icon(Icons.location_on)
                    ),
                    Container(
                padding: EdgeInsets.only(top:20,left: 10 ),
                child: Text("Sip Chat",style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 109, 74, 61),
                  fontWeight: FontWeight.bold
                ),),
              ),
                ],
              ),

                  ],
                ),
                
              )
            ],

          ),
          
        ),
          SizedBox(height: 10,),
         Container(
          height: 170,
          width: 400,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 236, 236, 236),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,color: Colors.white
              )
            ]
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 170,
                width: 200,
                child: Image.asset("./images/ame.jpeg",fit: BoxFit.cover,),
              ),
              Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Container(
                padding: EdgeInsets.only(top: 10,left: 20),
                child: Text("Americano",style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 109, 74, 61),
                  fontWeight: FontWeight.bold
                ),),
              ),
               Row(
                 children: [
                   Container(
                    padding: EdgeInsets.only(top:20,left: 20 ),
                    child: Icon(Icons.currency_rupee,
                    size: 20,
                    color:const Color.fromARGB(255, 109, 74, 61) ,)
                  ),
                  Container(
                    padding: EdgeInsets.only(top:20,left: 10 ),
                    child: Text("90",style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 109, 74, 61),
                  fontWeight: FontWeight.bold
                ),),
                  )
                 ],
               ),
                Row(
                 children: [
                  SizedBox(width: 100,),
                  
                  Container(
                    height:30 ,
                    width: 80,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 224, 224, 224)
                    ),
                    child: TextButton(onPressed: (){},
                     child: Text("Addcart",
                     style: TextStyle(color: const Color.fromARGB(255, 109, 74, 61) ),)),
               
                  ),
                  
                 ],
               ),
             
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Icon(Icons.location_on)
                    ),
                    Container(
                padding: EdgeInsets.only(top:20,left: 10 ),
                child: Text("Sip Chat",style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 109, 74, 61),
                  fontWeight: FontWeight.bold
                ),),
              ),
                ],
              ),

                  ],
                ),
                
              )
            ],

          ),
          
        )
        ],
      )
    )
    ]
    )
    );
  }
}