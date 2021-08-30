import 'package:dailybible/Controller/MusicController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../const.dart';

class MusicPlayer extends StatelessWidget {
  // const MusicPlayer({Key? key}) : super(key: key);
  var index;

  MusicPlayer({this.index});
  MusicController musicController = Get.put(MusicController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    var ind = index;
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
        child: GetBuilder(
          init: musicController,
          builder: (_) {
            return Column(
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
                    InkWell(
                      onTap: () async {
                        musicController.select.value = true;
                        print(musicController.musiclist.length);
                        print(ind);

                        if (ind != 0) {
                          ind--;
                          await musicController.check(
                              index: musicController.musiclist[ind],
                              chec: musicController.select.value);
                        } else {
                          ind = 0;
                          await musicController.check(
                              index: musicController.musiclist[ind],
                              chec: musicController.select.value);
                        }
                      },
                      child: Container(
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
                    ),
                    InkWell(
                      onTap: () {
                        // ind = index;
                        musicController.select.value =
                            !musicController.select.value;
                        musicController.check(
                            index: musicController.musiclist[ind],
                            chec: musicController.select.value);
                      },
                      child: musicController.select.value == false
                          ? Container(
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
                            )
                          : Container(
                              // height: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                color: pink,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.pause,
                                color: Colors.white,
                                size: MediaQuery.of(context).size.width / 4,
                              ),
                            ),
                    ),
                    InkWell(
                      onTap: () async {
                        musicController.select.value = true;
                        print(musicController.musiclist.length);
                        print(ind);

                        if (ind != 10) {
                          ind++;
                          await musicController.check(
                              index: musicController.musiclist[ind],
                              chec: musicController.select.value);
                        } else {
                          ind = 0;
                          await musicController.check(
                              index: musicController.musiclist[ind],
                              chec: musicController.select.value);
                        }
                      },
                      child: Container(
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                // GestureDetector(
                //   onTap: () {
                //     Get.back();
                //   },
                //   child: Container(
                //     padding: EdgeInsets.all(15),
                //     width: 150,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(101),
                //       color: Color(0xffDEC4C1),
                //     ),
                //     child: Center(
                //       child: Text(
                //         "Exit",
                //         style: bottonstyle,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            );
          },
        ),
      ),
    );
  }
}
