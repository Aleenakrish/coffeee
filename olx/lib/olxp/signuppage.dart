import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:image_picker/image_picker.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
Map mp={};
File?_image;

TextEditingController uname=TextEditingController();
TextEditingController email=TextEditingController();
TextEditingController pword=TextEditingController();
TextEditingController cpword=TextEditingController();
TextEditingController place=TextEditingController();
TextEditingController address=TextEditingController();
TextEditingController pin=TextEditingController();
TextEditingController phone=TextEditingController();
 bool obs=true;
 String? image;


  void addData()async{
    if(_image!=null){
      final bytes = await _image!.readAsBytes();
    final base64img = base64Encode(bytes);
    image=base64img;
    }
    mp={
      "username":uname.text,
      "email":email.text,
      "password":pword.text,
      "cpassword":cpword.text,
      "place":place.text,
      "address":address.text,
      "phone":phone.text,
      "pincode":pin.text,
      "profile": image
    };
    var res=await http.post(Uri.parse("http://jandk.tech/api/signup"),
    headers: {"Content-Type":"application/json"},
    body: jsonEncode(mp));
    print(res.statusCode);
}

final ImagePicker _picker=ImagePicker();


void imagePick(){
  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: Text("Choose Any?",style: TextStyle(color:Colors.black
      ),
      ),
      actions: [
        TextButton(onPressed: (){
          gallery();
        }, child: Text("Gallery",
        style: TextStyle(color:Colors.black ),)),
        TextButton(onPressed: (){
          camera();
        }, child: Text("Camera",
         style: TextStyle(color:Colors.black ),
        ))
      ],
    );
  });
}

void gallery()async{
  final PickedFile =await _picker.pickImage(source: ImageSource.gallery);
 setState(() {
    if(PickedFile!=null){
    _image=File(PickedFile.path);
    Navigator.pop(context);
  }
  else{
    print("error");
  }
 });
}

void camera()async{
final PickedFile =await _picker.pickImage(source: ImageSource.camera);
 setState(() {
    if(PickedFile!=null){
    _image=File(PickedFile.path);
    Navigator.pop(context);
  }
  else{
    print("error");
  }
 });
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
        child:Expanded(child: ListView(
          children: [

           Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: imagePick,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey,
                      )
                    ]
                  ),
                  child: ClipOval(
                    child: _image != null
                            ? Image.file(
                                _image!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              )
                            :Icon(Icons.person,
                    color: Colors.grey,
                    size: 100,
                    ),
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
                color:Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.grey,
                  
                  )
                ]
                ),
                child: TextField(
                  controller: uname,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                   hintText: "Username",
                    prefixIcon: Icon(Icons.person_2)
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                padding: EdgeInsets.only(left: 20),
                width: MediaQuery.of(context).size.width*.8,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color:Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.grey,
                   
                  )
                ]
                ),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                   hintText: "Email",
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
                    
                  )
                ]
                ),
                child: TextField(
                  controller: pword,
                  obscureText: obs,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                   hintText: "Password",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obs==true?obs=false:obs=true;
                        });
                      },
                      child: Icon(Icons.remove_red_eye,size: 20,))
                  ),
                ),
              ), SizedBox(height: 30,),
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
                   
                  )
                ]
                ),
                child: TextField(
                  controller: cpword,
                  obscureText: obs,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Confirm Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obs==true?obs=false:obs=true;
                        });
                      },
                      child: Icon(Icons.remove_red_eye,size: 20,))
                  ),
                ),
              ), SizedBox(height: 30,),
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
                    
                  )
                ]
                ),
                child: TextField(
                  controller: place,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                   hintText: "Place",
                    prefixIcon: Icon(Icons.place)
                  ),
                ),
              ), SizedBox(height: 30,),
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
                    
                  )
                ]
                ),
                child: TextField(
                  controller: address,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                   hintText: "Address",
                  ),
                ),
              ), SizedBox(height: 30,),
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
                    
                  )
                ]
                ),
                child: TextField(
                  controller: pin,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                   hintText: "Pincode"
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
                   
                  )
                ]
                ),
                child: TextField(
                  controller: phone,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Phone",
                    prefixIcon: Icon(Icons.phone)
                  ),
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "signin");
              }, child: Text("Sign Up",style: TextStyle(color: Colors.black,fontSize: 18),),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                backgroundColor:Colors.white,
                elevation: 4,
              ),
              ),
              SizedBox(height: 30,)
            ],
          ),
          ],
        ))
      ),
    );
  }
}