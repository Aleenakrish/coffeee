import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart'as http;


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
TextEditingController email=TextEditingController();
TextEditingController pssword=TextEditingController();
  bool obs=true;

  Map mp={};
    Map map={};

  final _olx=Hive.box("mybox");

  void saveData()async{
    mp={
      "email":email.text,
      "password":pssword.text
    };
var res=await http.post(Uri.parse("http://jandk.tech/api/signin"),
    headers: {"Content-Type":"application/json"},
    body: jsonEncode(mp));
    print(res.statusCode); 
    
      var map=jsonDecode(res.body);
       if(res.statusCode==200){
      _olx.put("key", map["token"]);
      print(_olx.get("key"));
      Navigator.pushNamedAndRemoveUntil(context, "homepage", (route)=>false);
    } else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(map["msg"])));
    }
    
     }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.center,
        child:ListView(
          children: [ Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
          child: Container(
            margin: EdgeInsets.only(top: 10),
            // padding: EdgeInsets.only(left: 60),
            height: 290,
            // width: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Image.asset("./images/olx.png"),
          ),
        ),
            Container(
              margin: EdgeInsets.only(left: 50,right: 50),
              // padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width*.8,
              height: 50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color:Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.grey,
                  offset: Offset(3, 3)
                )
              ]
              ),
              child: TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:"Email",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  prefixIcon: Icon(Icons.email)
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width*.8,
              height: 50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.grey,
                  offset: Offset(3, 3)
                )
              ]
              ),
              child: TextField(
                controller: pssword,
                obscureText: obs,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obs==true?
                        obs=false:obs=true;
                      });
                    },
                    child: Icon(Icons.remove_red_eye,size: 20,))
                ),
              ),
            ),
            SizedBox(height: 40,),
            Container(
               margin: EdgeInsets.only(left: 20,right: 20),
              padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width*.8,
              height: 50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey,
                  offset: Offset(5, 5)
                )
              ]
              ),
              child: TextButton(onPressed: (){
                saveData();
              }, child: Text("Log In",
              style: TextStyle(color: Colors.black,fontSize: 20),)),
            ),
            SizedBox(height: 50,),
            Text("forgot password?",
            style: TextStyle(fontSize: 17,color:Colors.white),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 250,),
                Text("Don't have an account?",
                style: TextStyle(
                  
                fontSize: 15),),
                SizedBox(width: 10,),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "signup");
                  },
                  child: Text("Sign Up",style:TextStyle(color: Colors.black,fontSize: 15)
               )
             )
            ],
           )
          ]
                 ),
          ]
        )
      )
    );
  }
}