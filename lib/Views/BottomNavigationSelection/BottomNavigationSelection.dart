import 'package:dailybible/Controller/NavController.dart';
import 'package:dailybible/Views/Book/Book.dart';
import 'package:dailybible/Views/Home/Home.dart';
import 'package:dailybible/Views/Music/Music.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const.dart';

class BottomNavigationSelection extends StatelessWidget {
  BottomNavigationSelection({Key? key}) : super(key: key);
  final NavController navController = Get.put(NavController());

  final List<Widget> bodyContent = [
    Home(),
    Music(),
    Book(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Center(
          child: bodyContent.elementAt(navController.selectedIndex),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: secondarycolor,
          selectedIconTheme: IconThemeData(color: Colors.white, size: 30),
          unselectedIconTheme: IconThemeData(color: Colors.white, size: 30),
          unselectedItemColor: Color(0xffFFFFFF),
          selectedItemColor: Color(0xffFFFFFF),
          selectedFontSize: 15,
          // landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          // selectedItemColor: Colors.amberAccent,
          // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffFECC05)),
          items: [
            BottomNavigationBarItem(
              backgroundColor: primarycolor,
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              backgroundColor: primarycolor,
              icon: Icon(Icons.history),
              label: "History",
            ),
            BottomNavigationBarItem(
              backgroundColor: primarycolor,
              icon: Icon(Icons.edit),
              label: "Draft",
            ),
            BottomNavigationBarItem(
              backgroundColor: primarycolor,
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          currentIndex: navController.selectedIndex,
          onTap: (index) => navController.selectedIndex = index,
        ),
      ),
    );
  }
}
