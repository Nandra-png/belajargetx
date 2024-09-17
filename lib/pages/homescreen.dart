import 'package:belajargetx/pages/controller/bottom_nav_controller.dart';
import 'package:belajargetx/pages/menus/history.dart';
import 'package:belajargetx/pages/menus/home.dart';
import 'package:belajargetx/pages/menus/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController = 
    Get.put(BottomNavController());
    
    final List<Widget> menus = [Home(), History(), Profile()];

    return Obx(() {
      return Scaffold(
        body: menus[bottomNavController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavController.selectedIndex.value,
          onTap: bottomNavController.changeindexMenu,
          
          items:[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.history_outlined),label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "Profile"),
        ]),
      );
    });
  }
}
