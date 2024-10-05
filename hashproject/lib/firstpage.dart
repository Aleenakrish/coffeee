import 'package:flutter/material.dart';
import 'package:hashproject/loginpage.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  void initState() {
    // TODO: implement initState
    super.initState();
    telegram();
  }

    Future<void>telegram()async{
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Loginpage()));
    });  
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text("",
          style: TextStyle(color: Colors.black,
          fontWeight: FontWeight.bold
          ),),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // margin: EdgeInsets.only(left: 100),
              alignment: Alignment.center,
              width: double.infinity,
              height: 400,
              child:Icon(Icons.telegram,size: 100,color: Colors.blue,),
            ),
            
          ],
        ),
      ),
    );
  }
}