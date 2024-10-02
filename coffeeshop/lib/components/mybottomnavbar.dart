import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Mybottomnavbar extends StatelessWidget {
  void Function(int)? onTabChange;
  Mybottomnavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        onTabChange: (value) {
          return onTabChange!(value);
        },
        color: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        tabActiveBorder: Border.all(color: Colors.brown),
        tabs:[
        GButton(icon: Icons.home,
        text: "Home",textColor: Colors.white,
        ), GButton(icon: Icons.shopping_cart,
        text: "Cart",textColor: Colors.white,
        )
      ]
       )
    );

  }
}