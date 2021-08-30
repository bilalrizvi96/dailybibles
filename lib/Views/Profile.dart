import 'dart:ui';

import 'package:dailybible/Views/BibleVersion.dart';
import 'package:dailybible/Views/Feedback.dart';
import 'package:dailybible/Views/Info.dart';
import 'package:dailybible/Views/Languages.dart';
import 'package:dailybible/Views/Notifications.dart';
import 'package:dailybible/Views/Reminder%20Alarm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool selected = true;
    var heights = MediaQuery.of(context).size.height;
    var widths = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 20),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back,
                      size: 25, color: Color(0xff5C5C78))),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 20),
            Center(
                child: Text(
              "Setting",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 12,
                  color: Color(0xff393133)),
            )),
            SizedBox(height: MediaQuery.of(context).size.height / 27),
            InkWell(
              onTap: () {
                Get.to(() => ReminderAlarm());
              },
              child: Container(
                width: widths / 1.3,
                height: heights / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        "assets/reminder alarm@3x.png",
                      ),
                      width: MediaQuery.of(context).size.width / 18,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 20),
                    Text(
                      "Reminder Alarm",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 26,
                          color: Color(0xff393133)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 45),
            InkWell(
              onTap: () {
                Get.to(() => Notifications());
              },
              child: Container(
                width: widths / 1.3,
                height: heights / 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    ),
                    color: Color(0xffDEC4C1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width / 6),
                    Image(
                      image: AssetImage(
                        "assets/Notifications@3x.png",
                      ),
                      width: MediaQuery.of(context).size.width / 18,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 20),
                    Text(
                      "Notifications",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 26,
                          color: Color(0xffFFFFFF)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 45),
            InkWell(
              onTap: () {
                Get.to(() => Languages());
              },
              child: Container(
                width: widths / 1.3,
                height: heights / 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width / 6),
                    Image(
                      image: AssetImage(
                        "assets/Languages@3x.png",
                      ),
                      width: MediaQuery.of(context).size.width / 18,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 20),
                    Text(
                      "Languages",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 26,
                          color: Color(0xff393133)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 45),
            InkWell(
              onTap: () {
                Get.to(() => BibleVersion());
              },
              child: Container(
                width: widths / 1.3,
                height: heights / 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width / 6),
                    Image(
                      image: AssetImage(
                        "assets/Bible versions@3x.png",
                      ),
                      width: MediaQuery.of(context).size.width / 18,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 20),
                    Text(
                      "Bible Versions",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 26,
                          color: Color(0xff393133)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 45),
            InkWell(
              onTap: () {
                Get.to(() => feedback());
              },
              child: Container(
                width: widths / 1.3,
                height: heights / 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width / 6),
                    Image(
                      image: AssetImage(
                        "assets/feedback@3x.png",
                      ),
                      width: MediaQuery.of(context).size.width / 18,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 20),
                    Text(
                      "FeedBack",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 26,
                          color: Color(0xff393133)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 45),
            InkWell(
              onTap: () {
                Get.to(() => Info());
              },
              child: Container(
                width: widths / 1.3,
                height: heights / 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width / 6),
                    Image(
                      image: AssetImage(
                        "assets/info@3x.png",
                      ),
                      width: MediaQuery.of(context).size.width / 18,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 20),
                    Text(
                      "Info",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 26,
                          color: Color(0xff393133)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
