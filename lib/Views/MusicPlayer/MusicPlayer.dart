import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // title: Text(
        //   "Home",
        //   style: appbarstyle,
        // ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Music background.png"),
                fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  "Amazing Grace",
                  style: verseheading,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // height: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: pink,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width / 8,
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: pink,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width / 4,
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: pink,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width / 8,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                padding: EdgeInsets.all(15),
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(101),
                  color: Color(0xffDEC4C1),
                ),
                child: Center(
                  child: Text(
                    "Exit",
                    style: bottonstyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
