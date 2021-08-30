import 'package:dailybible/Controller/MusicController.dart';
import 'package:dailybible/Views/MusicPlayer/MusicPlayer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const.dart';

class Music extends StatelessWidget {
  MusicController musicController = Get.put(MusicController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder(
        init: musicController,
        builder: (_) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "Player Music",
                    style: appbarstyle,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () => {
                        // musicController.audioplayer.play(),
                        // musicController.check()
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
                      size: MediaQuery.of(context).size.width / 4,
                    ),
                  )
                  // : Container(
                  //     // height: MediaQuery.of(context).size.width / 2,
                  //     decoration: BoxDecoration(
                  //       color: pink,
                  //       shape: BoxShape.circle,
                  //     ),
                  //     child: Icon(
                  //       Icons.pause,
                  //       color: Colors.white,
                  //       size: MediaQuery.of(context).size.width / 4,
                  //     ),
                  //   ),
                  ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(30.0),
                      topRight: const Radius.circular(30.0),
                    )),
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Container(
                        height: 10,
                      );
                    },
                    shrinkWrap: true,
                    itemCount: musicController.musiclist.length,
                    itemBuilder: (context, index) {
                      // Map<int, dynamic> map = musicController.musiclist.asMap();
                      return GestureDetector(
                        onTap: () {
                          // musicController.check(
                          //     index: musicController.musiclist.value[index]);
                          Get.to(MusicPlayer(
                            index: index,
                          ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
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
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Healing Music",
                                    style: versesubheading,
                                  ),
                                  Text(
                                    "Bright worshipful healing music for the soul",
                                    style: versedescrption,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    height: 5,
                                    color: pink,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          );
        },
      ),
    );
  }
}
