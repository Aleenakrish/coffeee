import 'package:flutter/material.dart';
import 'package:olxproject/signuppage.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
       
        title: Center(child: Text("Login",
        style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: ListView(
        children: [
          Container(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          // padding: EdgeInsets.only(left: 60),
          height: 290,
          // width: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(15) ,
          color: Colors.white,
          ),
          child: Image.asset("./images/olx.png"),

        ),

          
        ),
        Container(
          // padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.only(left: 90,right: 90),
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,color: Colors.grey
            )
          ]
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Icon(Icons.people_sharp)
                ),
                SizedBox(width: 20,),
                Container(
                  
                  child: Expanded(
                    child: TextField(
                      decoration:InputDecoration(
                        border: InputBorder.none,
                        hintText: "UserName",
                        
                      )
                    )
                  ),
                )
            ],
          ),
        ),
        SizedBox(height: 20,),
         Container(
          // padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.only(left: 90,right: 90),
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,color: Colors.grey
            )
          ]
          ),
          child: Row(
            children: [
                SizedBox(width: 20,),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child:Icon(
                    Icons.lock,size: 20,) ,
                ),
                Container(
                  
                  child: Expanded(
                    child: TextField(
                      decoration:InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        
                      )
                    )
                  ),
                ),Container(
                  padding: EdgeInsets.only(right: 20),
                  child:Icon(
                    Icons.remove_red_eye,size: 20,) ,
                )
            ],
          ),
        ),
        SizedBox(height: 40,),
        Container(
          margin: EdgeInsets.only(left: 200,right: 200),
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey
            )
          ]
          ),
          child: TextButton(onPressed: (){},
           child: Text("Login",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,fontSize: 17

           ),)),
        ),
        SizedBox(height: 20,),
        Container(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 130),
                child: Text("Don't have an account?"),
              ),
              Container(
                child: TextButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder:(context)=>Signuppage()));
                }, 
                child: Text("Sign up")),
              )
            ],
          ),
        ),
          
        
        ]
      ),
    );
  }
}