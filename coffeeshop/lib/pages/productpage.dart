import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

class productpage extends StatefulWidget {
  const productpage({super.key});

  @override
  State<productpage> createState() => _productpageState();
}

class _productpageState extends State<productpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
              height: 180,color: Colors.black,
              width: double.infinity,
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                       padding: EdgeInsets.only(top: 20,left: 50),
                        height: 110,
                        // width: double.infinity,
                        width: 250,
                        child: Text("COFFEE HOUSE",
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
                          color: Colors.white),),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              // color: Colors.white,
                              // blurRadius: 5
                            )
                          ],
                          color: Colors.black
                        ),
                        
                      ),
                      
                      Positioned(
                        left: 65,
                        top: 120,
                        child:Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color.fromARGB(255, 116, 68, 51),
                            boxShadow: [
                              BoxShadow(color: Colors.black,
                                blurRadius: 15,)
                            ]

                          ),
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(100),

                          
                            child:
                             Image.asset("./images/log.png",fit: BoxFit.cover,
                             
                            )

                          ),
                          //  Image.asset("./images/bb.jpg",fit: BoxFit.contain,),
                          
                          // child:LottieBuilder.asset("./lottie/lo.jpg")
                        ) ,
                        )
                    ],
                  )
                  ///////////////////////////////////////////////////////////
                ],
              ),
              
            ),
            SizedBox(height: 80,),
            Container(
              height: 400,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,             
                 children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                      SizedBox(width: 30,),
                      Container(
                        height: 250,
                        width: 180,
                        
                        decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:Colors.white,
              // boxShadow: [
                        //     BoxShadow(
                        //       blurRadius: 5,color: Colors.grey
                        //     )
                        //   ]
                        ),
                        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: 180,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: 
                  Image.asset("./images/bb.jpg",fit: BoxFit.fill,
                  ),
                )
                ),
                Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Container(
                  padding: EdgeInsets.only(top: 5,left: 10),
                  child: Text("Black Coffee ",style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                ),
               
              
                    ],
                  ),
                  
              
                  
                ),
                
                       
              ],
              
                        ),
                        
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 245,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                             Container(
                              height: 150,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // boxShadow: [BoxShadow(
                                //             blurRadius: 15,
                                //             color: Colors.grey
                                //           )]
                                ),
                              child:ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: 
                               Image.asset("./images/black.jpg",
                              fit: BoxFit.fill,
                              ),)
                            ),
                            Container(
                              child: Text("Black Tea",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                              ),
                              ),
                            )
                          ],
                        ),
                        
                      )
              //         s
                      // SizedBox(width: 10,),
                      //  Container(
                      //   height: 180,
                      //   width: 180,
                        
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(20),
                      //     color:Colors.white,
                      //     // boxShadow: [
                      //     //   BoxShadow(
                      //     //     blurRadius: 5,color: Colors.grey
                      //     //   )
                      //     // ]
                      //   ),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       // SizedBox(height: 10,),
                      //       Container(
                      //         height: 150,
                      //         width: 180,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(20),
                      //           // boxShadow: [BoxShadow(
                      //           //             blurRadius: 15,
                      //           //             color: Colors.grey
                      //           //           )]
                      //           ),
                      //         child:ClipRRect(
                      //           borderRadius: BorderRadius.circular(20),
                      //           child: 
                      //          Image.asset("./images/black.jpg",
                      //         fit: BoxFit.fill,
                      //         ),)
                      //       ),
                      //       Container(
                      //         child: Column(
                      //           mainAxisAlignment: MainAxisAlignment.start,
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //              Container(
                      //         padding: EdgeInsets.only(top: 5,left: 10),
                      //         child: Text("Black Tea",style: TextStyle(
                      //           fontSize: 17,
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.bold
                      //         ),),
                      //       ),
                      //       //  Row(
                      //       //    children: [
                      //       //      Container(
                      //       //       padding: EdgeInsets.only(top:5,left: 20 ),
                      //       //       child: Icon(Icons.currency_rupee,
                      //       //       size: 20,
                      //       //       color:Colors.black ,)
                      //       //     ),
                      //       //     Container(
                      //       //       padding: EdgeInsets.only(top:5,left: 10 ),
                      //       //       child: Text("20",style: TextStyle(
                      //       //     fontSize: 17,
                      //       //     color:Colors.black ,
                      //       //     fontWeight: FontWeight.bold
                      //       //   ),),
                      //       //     )
                      //       //    ],
                      //       //  ),
                      //       //   Row(
                      //       //     crossAxisAlignment: CrossAxisAlignment.center,
                      //       //    children: [
                      //       //     SizedBox(width: 100,),
                    
                      //       //     Container(
                      //       //       height:30 ,
                      //       //       width: 30,
                      //       //        decoration: BoxDecoration(
                      //       //         borderRadius: BorderRadius.circular(100),
                      //       //         color: const Color.fromARGB(255, 224, 224, 224)
                      //       //       ),
                      //       //       child: TextButton(onPressed: (){},
                      //       //        child:Icon(Icons.add,size: 13,)),
                 
                      //       //     ),
                    
                      //       //    ],
                      //       //  ),
                      //       // Row(
                      //       //   children: [
                      //       //     Container(
                      //       //       padding: EdgeInsets.only(top: 15,left: 20),
                      //       //       child: Icon(Icons.location_on,size: 20,)
                      //       //       ),
                      //       //       Container(
                      //       //   padding: EdgeInsets.only(top:20,left: 10 ),
                      //       //   child: Text("COFFEE HOUSE",style: TextStyle(
                      //       //     fontSize: 15,
                      //       //     color:Colors.black ,
                      //       //     fontWeight: FontWeight.bold
                      //       //   ),),
                      //       // ),
                      //       //   ],
                      //       // ),
              
                      //           ],
                      //         ),
                  
                      //       ),
                
               
              
                      //     ],
              
                      //   ),
                        
                      // ),
                    ],
                  ), 
                  
                 
                ],
              ),
              
            ),
            ////////////////////////////////////////////////////////////
            SizedBox(height: 10,),
           Container(
                padding: EdgeInsets.only(left: 20),
                child: Text("Poppular Coffees",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              
              ),
            


            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                          blurRadius: 5,color: Colors.grey
                        )]
                    ),
                    child: Row(

                      children: [SizedBox(width: 10,),
                        Container(
                          height: 140,
                          width:150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              blurRadius: 15,
                              color: Colors.grey
                            )]
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: 
                          Image.asset("./images/ame.jpeg",
                fit: BoxFit.cover,
                ),)
                        ),
                      Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Container(
                padding: EdgeInsets.only(top:17,left: 10),
                child: Text(" Americanno",style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),),
              ),
               Row(
                 children: [
                   Container(
                    padding: EdgeInsets.only(top:10,left: 20 ),
                    child: Icon(Icons.currency_rupee,
                    size: 20,
                    color:Colors.black ,)
                  ),
                  Container(
                    padding: EdgeInsets.only(top:5,left: 10 ),
                    child: Text("40",style: TextStyle(
                  fontSize: 17,
                  color:Colors.black ,
                  fontWeight: FontWeight.bold
                ),),
                  )
                 ],
               ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                  SizedBox(width: 200,),
                  
                  Container(
                    height:30 ,
                    width: 30,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromARGB(255, 224, 224, 224)
                    ),
                    child: TextButton(onPressed: (){},
                     child:Icon(Icons.add,size: 13,)),
               
                  ),
                  
                 ],
               ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15,left: 20),
                    child: Icon(Icons.location_on,size: 20,)
                    ),
                    Container(
                padding: EdgeInsets.only(top:20,left: 10 ),
                child: Text("COFFEE HOUSE",style: TextStyle(
                  fontSize: 15,
                  color:Colors.black ,
                  fontWeight: FontWeight.bold
                ),),
              ),
                ],
              ),

                  ],
                ),
                
              ),
                      ],
                    ),

                  
                  ),
                  
                ],
              ),
            ),SizedBox(height: 15,),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                          blurRadius: 5,color: Colors.grey
                        )]
                    ),
                    child: Row(

                      children: [SizedBox(width: 10,),
                        Container(
                          height: 140,
                          width:150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              blurRadius: 15,
                              color: Colors.grey
                            )]
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: 
                          Image.asset("./images/coffee.jpeg",
                fit: BoxFit.cover,
                ),)
                        ),
                      Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Container(
                padding: EdgeInsets.only(top:17,left: 10),
                child: Text(" Cappuccino",style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),),
              ),
               Row(
                 children: [
                   Container(
                    padding: EdgeInsets.only(top:10,left: 20 ),
                    child: Icon(Icons.currency_rupee,
                    size: 20,
                    color:Colors.black ,)
                  ),
                  Container(
                    padding: EdgeInsets.only(top:5,left: 10 ),
                    child: Text("140",style: TextStyle(
                  fontSize: 17,
                  color:Colors.black ,
                  fontWeight: FontWeight.bold
                ),),
                  )
                 ],
               ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                  SizedBox(width: 200,),
                  
                  Container(
                    height:30 ,
                    width: 30,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromARGB(255, 224, 224, 224)
                    ),
                    child: TextButton(onPressed: (){},
                     child:Icon(Icons.add,size: 13,)),
               
                  ),
                  
                 ],
               ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15,left: 20),
                    child: Icon(Icons.location_on,size: 20,)
                    ),
                    Container(
                padding: EdgeInsets.only(top:20,left: 10 ),
                child: Text("COFFEE HOUSE",style: TextStyle(
                  fontSize: 15,
                  color:Colors.black ,
                  fontWeight: FontWeight.bold
                ),),
              ),
                ],
              ),

                  ],
                ),
                
              ),
                      ],
                    ),

                  
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                          blurRadius: 5,color: Colors.grey
                        )]
                    ),
                    child: Row(

                      children: [SizedBox(width: 10,),
                        Container(
                          height: 140,
                          width:150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              blurRadius: 15,
                              color: Colors.grey
                            )]
                          ),
                          
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            
                             child:Image.asset("./images/ice.jpg",
                fit: BoxFit.cover,
                ),
                          )
                //           Image.asset("./images/ice.jpg",
                // fit: BoxFit.cover,
                // ),
                        ),
                      Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Container(
                padding: EdgeInsets.only(top:17,left: 10),
                child: Text(" Creamy iced Coffee",style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),),
              ),
               Row(
                 children: [
                   Container(
                    padding: EdgeInsets.only(top:10,left: 20 ),
                    child: Icon(Icons.currency_rupee,
                    size: 20,
                    color:Colors.black ,)
                  ),
                  Container(
                    padding: EdgeInsets.only(top:5,left: 10 ),
                    child: Text("40",style: TextStyle(
                  fontSize: 17,
                  color:Colors.black ,
                  fontWeight: FontWeight.bold
                ),),
                  )
                 ],
               ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                  SizedBox(width: 200,),
                  
                  Container(
                    height:30 ,
                    width: 30,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromARGB(255, 224, 224, 224)
                    ),
                    child: TextButton(onPressed: (){},
                     child:Icon(Icons.add,size: 13,)),
               
                  ),
                  
                 ],
               ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15,left: 20),
                    child: Icon(Icons.location_on,size: 20,)
                    ),
                    Container(
                padding: EdgeInsets.only(top:20,left: 10 ),
                child: Text("COFFEE HOUSE",style: TextStyle(
                  fontSize: 15,
                  color:Colors.black ,
                  fontWeight: FontWeight.bold
                ),),
              ),
                ],
              ),

                  ],
                ),
                
              ),
                      ],
                    ),

                  
                  ),
                  
                ],
              ),
            ),
              SizedBox(height: 15,),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                          blurRadius: 5,color: Colors.grey
                        )]
                    ),
                    child: Row(

                      children: [SizedBox(width: 10,),
                        Container(
                          height: 140,
                          width:150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              blurRadius: 15,
                              color: Colors.grey
                            )]
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: 
                          Image.asset("./images/latte.jpg",
                fit: BoxFit.cover,
                ),
                        )
                        ),
                      Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Container(
                padding: EdgeInsets.only(top:17,left: 10),
                child: Text("Latte Macchiato",style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),),
              ),
               Row(
                 children: [
                   Container(
                    padding: EdgeInsets.only(top:10,left: 20 ),
                    child: Icon(Icons.currency_rupee,
                    size: 20,
                    color:Colors.black ,)
                  ),
                  Container(
                    padding: EdgeInsets.only(top:5,left: 10 ),
                    child: Text("100",style: TextStyle(
                  fontSize: 17,
                  color:Colors.black ,
                  fontWeight: FontWeight.bold
                ),),
                  )
                 ],
               ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                  SizedBox(width: 200,),
                  
                  Container(
                    height:30 ,
                    width: 30,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromARGB(255, 224, 224, 224)
                    ),
                    child: TextButton(onPressed: (){},
                     child:Icon(Icons.add,size: 13,)),
               
                  ),
                  
                 ],
               ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15,left: 20),
                    child: Icon(Icons.location_on,size: 20,)
                    ),
                    Container(
                padding: EdgeInsets.only(top:20,left: 10 ),
                child: Text("Sip Chat",style: TextStyle(
                  fontSize: 15,
                  color:Colors.black ,
                  fontWeight: FontWeight.bold
                ),),
              ),
                ],
              ),

                  ],
                ),
                
              ),
                      ],
                    ),

                  
                  ),
                  
                ],
              ),
            ),
          ],
        )

      )
//       
    );
  }
}