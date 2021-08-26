

import 'dart:ui';

import 'package:dailybible/Controller/ReminderAlarmController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReminderAlarm extends StatelessWidget {
  // const ReminderAlarm({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    bool isSwitch = false;

    return Scaffold(
        body: Container(


          child: Column(
            children: [

              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height / 20),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                        Icons.arrow_back, size: 30, color: Color(0xff5C5C78))
                ),
              ),
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height / 27),
              Text("Reminder Alarm", style: TextStyle(fontSize: MediaQuery
                  .of(context)
                  .size
                  .width / 11,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff393133))),
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height / 45),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width / 15),
                        Text(
                            "Daily Verse Alarm", style: TextStyle(fontSize: MediaQuery.of(context).size.width / 16, color: Color(0xff393133))
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width / 3),
                        Switch(
                          value: isSwitch,
                          onChanged: (bool value) {
                            value = isSwitch;
                          },
                        ),


                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 90),
                    Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width / 15),
                        Text( "Time", style: TextStyle(fontSize: MediaQuery.of(context).size.width / 20,fontWeight: FontWeight.w300, color: Color(0xff393133))
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width / 6),
                        Text( "8:00 AM", style: TextStyle(fontSize: MediaQuery.of(context).size.width / 20,fontWeight: FontWeight.w300, color: Color(0xff393133))
                        ),

                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 90),
                    Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width / 15),
                        Text( "Repeat", style: TextStyle(fontSize: MediaQuery.of(context).size.width / 20,fontWeight: FontWeight.w300, color: Color(0xff393133))
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width / 8),
                        Text( "Weekends", style: TextStyle(fontSize: MediaQuery.of(context).size.width / 20,fontWeight: FontWeight.w300, color: Color(0xff393133))
                        ),

                      ],
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Divider( height: 1,),
              )


            ],
          ),
        )

    );
  }


}
