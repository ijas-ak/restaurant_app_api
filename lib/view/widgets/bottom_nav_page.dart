import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavPage extends StatelessWidget {
  const BottomNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Colors.grey.shade900,
        style: GnavStyle.oldSchool,

        color: Colors.grey,
        activeColor: Colors.yellow.shade800,
        tabMargin: EdgeInsets.all(10),
        tabs: [
          GButton(icon: IconlyBold.home),
          GButton(icon: IconlyBold.search),
          GButton(icon: IconlyBold.bookmark),
          GButton(icon: IconlyBold.setting),
        ],
      ),
    );
  }
}
