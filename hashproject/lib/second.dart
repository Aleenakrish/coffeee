import 'package:flutter/material.dart';
import 'package:hashproject/third.dart';


class Second extends StatelessWidget {
  const Second({super.key});
 
  @override
  Widget build(BuildContext context) {
     bool _isRunning=false;
      void SignUp(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Third()));
  }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("WELCOME",
        style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold
        )
        )
        ),
         backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
           width: MediaQuery.of(context).size.width,
        child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*.3,
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
                                color:const Color.fromARGB(255, 153, 188, 228)
                               ),
                                child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                  Expanded(
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "  Enter your E-mail or Username ...",
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
                            padding: EdgeInsets.only(left: 20,right: 20,),
                             width: 300,
                              height:50,
                               alignment: Alignment.center,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:const Color.fromARGB(255, 153, 188, 228)
                               ),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Third()
                    )
                  );
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
                child: Center(child: Text("LOGIN"))),
              ]
            ),
                  ),
                  ],
                      ),
                    )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont't have an Account?  ",style: TextStyle(color: Colors.blue,)),
            GestureDetector(
              onTap: SignUp,
              child: Container(
                child: Text("Sign Up",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
              ),
            )
              ],
            ),
          
          
        ],
        ),
      ),
    );
  }
}