import 'package:flutter/material.dart';
import 'package:hashproject/second.dart';


class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
     bool _isRunning=false;
      void SignIn(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
  }

    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("SIGN UP",
        style: TextStyle(fontWeight: FontWeight.bold,
          color: Colors.blue))),
         leading: BackButton(color: Colors.blue,),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*.4,
              child: Stack(
                children: [


                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                            Container(
                              padding: EdgeInsets.only(left: 20,right: 20),
                             width: 300,
                              height: 50,
                               alignment: Alignment.center,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 153, 188, 228)
                               ),
                                child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                  Expanded(
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "  Enter your E-mail or Username...",
                            hintStyle: TextStyle(color: Colors.blue[100]),
                            enabled: true,
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.person,
                              color: Colors.blue[100],
                              size: 25,
                            )
                          ),
                          )
                    )
                     ],
                     ),
                   ),
                   SizedBox(height: 10,),
                          Container(
                            padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                             width: 300,
                              height: 50,
                               alignment: Alignment.center,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:const Color.fromARGB(255, 153, 188, 228)
                               ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                  Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                            hintText: "  Password...",
                            hintStyle: TextStyle(color: Colors.blue[100]),
                            enabled: true,
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.lock,
                              color: Colors.blue[100],
                              size: 20,
                            ),
                            // suffixIcon: 
                            // IconButton(onPressed: (){}, icon: Icon(
                            //   Icons.remove_red_eye,
                            //   color: Colors.blue[200],
                            // ))
                          ),
                          ),
                )
                  ],
                )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Third()));
                  },
                   style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 15, 137, 236),
              foregroundColor: Colors.white,
              padding: EdgeInsets.fromLTRB(80, 25, 80, 25)
            ),
            child: Stack(
              children: [
            Container(
              width: 140,
              height: 16,
                child: Center(child: Text("SIGNUP"))),
              ]
            ),
                  ),
                   SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an Account?  ",style: TextStyle(color: Colors.blue,)),
            GestureDetector(
              onTap: SignIn,
              child: Container(
                child: Text("Sign In",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
              ),
            )
              ],
            ),
          
                  SizedBox(height: 10,),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Container(
                  //       alignment: Alignment.topLeft,
                  //      width: 200,
                  //       child: Divider(
                  //         color: Colors.blue,
                  //       )
                  //       ),
                  //       SizedBox(width: 20,),
                  //       Text("OR",style: TextStyle(color: Colors.blue),),
                  //       SizedBox(width: 20,),
                  //        Container(
                  //   alignment: Alignment.topLeft,
                  //  width: 200,
                  //   child: Divider(
                  //     color: Colors.blue,
                  //   ))
                  //   ],
                  // ),
                  SizedBox(height: 20,),
                  Container(
                    child: Text("Or Continue with ",
                    style: TextStyle(
                      color: Colors.blue
                    ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                             color: Colors.white,
                          ),
                         
                          child: TextButton(onPressed: (){},
                           child: 
                          Icon(
                          Icons.facebook_sharp,
                          color: Colors.blue,
                          size: 45,
                        ),
                        )
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue
                          ),
                           child:                          
                            ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child:Image.asset("./images/google.webp",fit: BoxFit.cover,
                            ) ,
                           )
                           
                        )
                        
                      ],
                    ),
                  
                  ),
                  
                        ],
                      ),
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