import 'package:flutter/material.dart';

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
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 50),
              child: Text("UserName  :",style: TextStyle(
                fontSize: 18
              ),),
            ),
            SizedBox(width: 10,),
            
            Container(
              width: 250,
              // padding: EdgeInsets.only(right: 30),
              child: Expanded(
                child:TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder()
                  ),
                ) ),
            )
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 50),
              child: Text("Password  :",style: TextStyle(
                fontSize: 18
              ),),
            ),
            SizedBox(width: 15,),
            
            Container(
              width: 250,
              // padding: EdgeInsets.only(right: 30),
              child: Expanded(
                child:TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder()
                  ),
                ) ),
            )
          ],
        ),
        SizedBox(height: 60,),

        Container(
          margin: EdgeInsets.only(left: 200,right: 200),
          height: 50,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          color: Colors.green,
          ),
          child: TextButton(onPressed: (){}, 
          child:Text("Login",style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.bold
          ),)),
        )
        ]
      ),
    );
  }
}