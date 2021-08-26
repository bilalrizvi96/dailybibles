import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Profile.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heights = MediaQuery.of(context).size.height;
    var widths = MediaQuery.of(context).size.width;
    var changecolor = Color(0xFFFFFFFF);
    return Scaffold(
      body: Container(
        width: widths,
        height: heights,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'More',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: widths / 26),
            ),
            SizedBox(
              height: heights / 20,
            ),
            GestureDetector(
              onTap: () {
                changecolor = Color(0xFFDEC4C1);
              },
              child: Container(
                width: widths / 1.3,
                height: heights / 15,
                // padding: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF707070)),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                  child: Text(
                    'Reading Plan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: widths / 26),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: heights / 50,
            ),
            Container(
              width: widths / 1.3,
              height: heights / 15,
              // padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF707070)),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                child: Text(
                  'Journal',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: widths / 26),
                ),
              ),
            ),
            SizedBox(
              height: heights / 50,
            ),
            GestureDetector(
              onTap: () {
                changecolor = Color(0xFFDEC4C1);
                Get.to(Profile());
              },
              child: Container(
                width: widths / 1.3,
                height: heights / 15,
                // padding: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF707070),
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    'Settings',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: widths / 26),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: heights / 50,
            ),
            Container(
              width: widths / 1.3,
              height: heights / 15,
              // padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF707070)),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                child: Text(
                  'Remove Ads',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: widths / 26),
                ),
              ),
            ),
            SizedBox(
              height: heights / 50,
            ),
            Container(
              width: widths / 1.3,
              height: heights / 15,
              // padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF707070)),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                child: Text(
                  'InviteFriends',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: widths / 26),
                ),
              ),
            ),
            SizedBox(
              height: heights / 50,
            ),
            Container(
              width: widths / 1.3,
              height: heights / 15,
              // padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF707070)),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                child: Text(
                  'Rate on Google Play',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: widths / 26),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
