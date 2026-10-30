import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [Icons.dashboard, Icons.category, Icons.list, Icons.person],
        activeIndex: 0,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) {
          print("Clicked on index: $index");
        },
        backgroundColor: primaryColor,
        activeColor: Colors.white,
        inactiveColor: secondaryColor,
      ),
    );
  }
}
