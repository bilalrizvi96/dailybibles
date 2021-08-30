import 'dart:ui';

import 'package:dailybible/Controller/ReminderAlarmController.dart';
import 'package:dailybible/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReminderAlarm extends StatelessWidget {
  // const ReminderAlarm({Key? key}) : super(key: key);
  ReminderAlamcontroller _reminderAlamcontroller =
      Get.put(ReminderAlamcontroller());
  @override
  Widget build(BuildContext context) {
    bool isSwitch = false;
    var heights = MediaQuery.of(context).size.height;
    var widths = MediaQuery.of(context).size.width;
    return Scaffold(
        floatingActionButton: new FloatingActionButton(
            elevation: 0.0,
            child: new Icon(Icons.add),
            backgroundColor: primarycolor,
            onPressed: () {
              _reminderAlamcontroller.showDatePicker(context);
            }),
        body: Container(
          width: widths,
          height: heights,
          child: GetBuilder(
            init: _reminderAlamcontroller,
            builder: (_) {
              return Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height / 30),
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back,
                            size: 30, color: Color(0xff5C5C78))),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 27),
                  Text("Reminder Alarm",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 11,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff393133))),
                  SizedBox(height: MediaQuery.of(context).size.height / 45),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 15),
                            Text("Daily Verse Alarm",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 25,
                                    color: Color(0xff393133))),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 3),
                            Switch(
                              value: _reminderAlamcontroller.visibilty.value,
                              activeColor: primarycolor,
                              onChanged: (bool value) {
                                _reminderAlamcontroller.updates(value);
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 90),
                        Row(
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 15),
                            Text("Time",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 30,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff393133))),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 6),
                            Text(
                                _reminderAlamcontroller.chosenDateTime != null
                                    ? _reminderAlamcontroller
                                            .chosenDateTime!.hour
                                            .toString() +
                                        " : " +
                                        _reminderAlamcontroller
                                            .chosenDateTime!.minute
                                            .toString()
                                    : '00:00',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 30,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff393133))),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 90),
                        // Row(
                        //   children: [
                        //     SizedBox(
                        //         width: MediaQuery.of(context).size.width / 15),
                        //     Text("Repeat",
                        //         style: TextStyle(
                        //             fontSize:
                        //                 MediaQuery.of(context).size.width / 30,
                        //             fontWeight: FontWeight.w300,
                        //             color: Color(0xff393133))),
                        //     SizedBox(
                        //         width: MediaQuery.of(context).size.width / 8),
                        //     Text("Weekends",
                        //         style: TextStyle(
                        //             fontSize:
                        //                 MediaQuery.of(context).size.width / 30,
                        //             fontWeight: FontWeight.w300,
                        //             color: Color(0xff393133))),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Divider(
                      height: 1,
                    ),
                  )
                ],
              );
            },
          ),
        ));
  }
}
