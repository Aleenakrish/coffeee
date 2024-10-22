import 'package:flutter/material.dart';
import 'package:olxproject/loginpage.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
TextEditingController c1=TextEditingController();
TextEditingController c2=TextEditingController();
TextEditingController c3=TextEditingController();
TextEditingController c4=TextEditingController();
TextEditingController c5=TextEditingController();
TextEditingController c6=TextEditingController();
TextEditingController c7=TextEditingController();
TextEditingController c8=TextEditingController();
TextEditingController c9=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
                // padding: EdgeInsets.only(left: 20),
          // margin: EdgeInsets.only(top: 30),
          // padding: EdgeInsets.only(left: 60),
          height: 190,
          // width: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(15) ,
          color: Colors.white,
          ),
          child: Image.asset("./images/olx.png"),

        ),
        Container(
          height: 500,
          width: MediaQuery.of(context).size.width,
          child:ListView(
            children: [
              Container(
                height: 5,
              ),
              Container(
                  padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,color: Colors.grey
                  )
                ]
                ),
                margin: EdgeInsets.only(left: 50,right: 70),
                child: TextField(
                  controller: c1,

                  decoration: InputDecoration(
                    // border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                     border: InputBorder.none,
                    hintText: "Email"
                     
                    // enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              
              Container(
                  padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                 boxShadow: [
                  BoxShadow(
                    blurRadius: 5,color: Colors.grey
                  )
                ]),
                margin: EdgeInsets.only(left: 50,right: 70),
                child: TextField(
                  controller: c2,

                  decoration: InputDecoration(
                    // border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                     border: InputBorder.none,
                    hintText: "Name"
                     
                    // enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
               SizedBox(height: 15,),
              
                     Container(
          // padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.only(left: 50,right: 70),
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
                  
                  child: Expanded(
                    child: TextField(
                      controller: c3,
                      decoration:InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        
                      )
                    )
                  ),
                ), Container(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.remove_red_eye,size: 20,)
                ),
            ],
          ),
        ),
               SizedBox(height: 15,),
               Container(
          // padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.only(left: 50,right: 70),
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
                  
                  child: Expanded(
                    child: TextField(
                      controller: c4,
                      decoration:InputDecoration(
                        border: InputBorder.none,
                        hintText: "ConfirmPassword",
                        
                      )
                    )
                  ),
                ), Container(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.remove_red_eye,size: 20,)
                ),
            ],
          ),
        ),
              
             
               SizedBox(height: 15,),
               Container(
          // padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.only(left: 50,right: 70),
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
                  
                  child: Expanded(
                    child: TextField(
                      controller: c5,
                      decoration:InputDecoration(
                        border: InputBorder.none,
                        hintText: "Place",
                        
                      )
                    )
                  ),
                ),
                //  Container(
                // padding: EdgeInsets.only(right: 20),
                // child: Icon(Icons.remove_red_eye,size: 20,)
                // ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        Container(
          // padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.only(left: 50,right: 70),
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
                  
                  child: Expanded(
                    child: TextField(
                      controller: c6,
                      decoration:InputDecoration(
                        border: InputBorder.none,
                        hintText: "Address",
                        
                      )
                    )
                  ),
                ),
                //  Container(
                // padding: EdgeInsets.only(right: 20),
                // child: Icon(Icons.remove_red_eye,size: 20,)
                // ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        Container(
          // padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.only(left: 50,right: 70),
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
                  
                  child: Expanded(
                    child: TextField(
                      controller: c7,
                      decoration:InputDecoration(
                        border: InputBorder.none,
                        hintText: "Profile",
                        
                      )
                    )
                  ),
                ), Container(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.remove_red_eye,size: 20,)
                ),
            ],
          ),
        ),
         SizedBox(height: 15,),
        Container(
          // padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.only(left: 50,right: 70),
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
                  
                  child: Expanded(
                    child: TextField(
                      controller: c8,
                      keyboardType: TextInputType.number,
                      decoration:InputDecoration(
                        border: InputBorder.none,
                        hintText: "Pincode",
                        
                      )
                    )
                  ),
                ),
                //  Container(
                // padding: EdgeInsets.only(right: 20),
                // child: Icon(Icons.remove_red_eye,size: 20,)
                // ),
            ],
          ),
        ),
         SizedBox(height: 15,),
        Container(
          // padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.only(left: 50,right: 70),
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
                  
                  child: Expanded(
                    child: TextField(
                      controller: c9,
                      keyboardType: TextInputType.phone,
                      decoration:InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone No",
                        
                      )
                    )
                  ),
                ),
                //  Container(
                // padding: EdgeInsets.only(right: 20),
                // child: Icon(Icons.remove_red_eye,size: 20,)
                // ),
            ],
          ),
        ),
        
              
             
                      
              
              SizedBox(height: 40,),

              Container(
                margin: EdgeInsets.only(left: 170,right: 170),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,color: Colors.grey
                    )
                  ]
                ),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
                 
                }, 
                child: Text("Save")),
              ),
              Container(
                height: 50,
              )
              
            ],
          )
          ),

          ],
        ),
      )
    );
   
  }
}
