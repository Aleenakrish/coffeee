import 'package:coffeeshop/components/mybottomnavbar.dart';
import 'package:coffeeshop/pages/cartpage.dart';
import 'package:coffeeshop/pages/productpage.dart';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override

  int selectedpage = 0;

  final List<Widget> page = [productpage(), Cartpage()];

  void navigateBottonBar(int index){
    setState(() {
      selectedpage = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      bottomNavigationBar: Mybottomnavbar(
        onTabChange: (index)=> navigateBottonBar(index),
        
      ),
      body: page[selectedpage],

    );
  }
}