
import 'package:coffeeshop/homepage.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    expenseTrack();
  }

    Future<void>expenseTrack()async{
    Future.delayed(Duration(seconds: 4),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Homepage()));
    });  
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:  Colors.black,
        title: Center(
          child: Text("COFFEE HOUSE",
          style: TextStyle(color: Colors.white,
          fontSize:25 ,
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
              height: 700,
              child:Image.network(
                "https://png.pngtree.com/png-vector/20230413/ourmid/pngtree-black-coffee-cup-drink-transparent-png-image_6698456.png")
            ),
            
          ],
        ),
      ),
    );
  }
}