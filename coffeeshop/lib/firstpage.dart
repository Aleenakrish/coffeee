import 'package:coffeeshop/homepage.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
    void initState() {
    // TODO: implement initState
    super.initState();
    expenseTrack();
  }

    Future<void>expenseTrack()async{
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Homepage()));
    });  
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.cyan,
        child:ListView(
          children: [
            Container(
              height: 1000,
              color: const Color.fromARGB(255, 27, 27, 27),
              width: double.infinity,
              child: Column(
                children: [
                  // =========================================stack start
                    Stack(
                    clipBehavior: Clip.none,
                    children: [
                             Container(
                    height: 1000,
                    width: double.infinity,
                   decoration: BoxDecoration(
                boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        spreadRadius: 1,
                        blurStyle: BlurStyle.inner,
                      )
                    ],
                    color: Colors.black,
                    borderRadius: BorderRadiusDirectional.vertical(bottom: Radius.circular(100))
                   ),child: ClipRRect(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50),),
                    child: Image.asset("./images/back.jpg",fit: BoxFit.fill,)),
                  ),

                      Positioned(top: 20,left: 60,
                        child:Container(height: 180,width: 300,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      // color: Colors.grey[400]
                      ),
                      child: Text("COFFEE  HOUSE ",style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),)
                     
                      // child: GestureDetector(
                      //   onTap: pickimage,
                      //  child: img?ClipOval(child:  Image.file(_image!,fit: BoxFit.cover,)):IconButton(onPressed: () {
                      //   pickimage();
                      // }, icon: Icon(Icons.perm_identity_outlined,size: 125,)),
                      // )
                      )),

                    ],
                  ),
                  // =========================================stack end



                ],
              ),
            ),
          ]
        )
        
        )
        );
  }
}