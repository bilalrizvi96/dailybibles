import 'package:carousel_slider/carousel_slider.dart';
import 'package:dailybible/Controller/HomeverseNightController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../const.dart';

class HomeVerseNight extends StatelessWidget {
  HomeVerseNight({Key? key}) : super(key: key);
  HomeverseNightController controller = Get.put(HomeverseNightController());
  CarouselController corsalcontroller = new CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Home",
          style: appbarstyle,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Moon Icon.png",
                  height: 30,
                  width: 30,
                ),
                Text(
                  "Verse for the night",
                  style: verseheading,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "How was your day?",
              style: versesubheading,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/Happy.png",
                        height: 50,
                        width: 50,
                      ),
                      Text(
                        "Happy",
                        style: versedescrption,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/Sad.png",
                        height: 50,
                        width: 50,
                      ),
                      Text(
                        "Sad",
                        style: versedescrption,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/Depressed.png",
                        height: 50,
                        width: 50,
                      ),
                      Text(
                        "Depressed",
                        style: versedescrption,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/Thankful.png",
                        height: 50,
                        width: 50,
                      ),
                      Text(
                        "Thankful",
                        style: versedescrption,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/Angry.png",
                        height: 50,
                        width: 50,
                      ),
                      Text(
                        "Angry",
                        style: versedescrption,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/Worried.png",
                        height: 50,
                        width: 50,
                      ),
                      Text(
                        "Worried",
                        style: versedescrption,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CarouselSlider(
                carouselController: corsalcontroller,
                options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      controller.index.value = index;
                    },
                    // reverse: false,
                    // autoPlay: false,
                    // disableCenter: false,
                    enableInfiniteScroll: false,
                    height: MediaQuery.of(context).size.height / 2,
                    viewportFraction: 3.0),
                items: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(left: 60.0, right: 60),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Verse:",
                            style: verseheading,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xff393133).withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "\"For God so loved the world, that he gave his only Son, that whoever believes in him should not perish but have eternal life.\"",
                              style: versestylehome,
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/Volume.png",
                                height: 20,
                                width: 20,
                              ),
                              Spacer(),
                              Text(
                                "Jhon 3:16",
                                style: TextStyle(
                                  color: Color(0xff393133),
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.index.value++;
                              corsalcontroller.nextPage();
                            },
                            child: Container(
                              padding: EdgeInsets.all(15),
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(201),
                                color: Color(0xffDEC4C1),
                              ),
                              child: Center(
                                child: Text(
                                  "Next",
                                  style: bottonstyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(left: 60.0, right: 60),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Verse:",
                            style: verseheading,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xff393133).withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "\"For God so loved the world, that he gave his only Son, that whoever believes in him should not perish but have eternal life.\"",
                              style: versestylehome,
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/Volume.png",
                                height: 20,
                                width: 20,
                              ),
                              Spacer(),
                              Text(
                                "Jhon 3:16",
                                style: TextStyle(
                                  color: Color(0xff393133),
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.index.value++;
                              corsalcontroller.nextPage();
                            },
                            child: Container(
                              padding: EdgeInsets.all(15),
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(201),
                                color: Color(0xffDEC4C1),
                              ),
                              child: Center(
                                child: Text(
                                  "Next",
                                  style: bottonstyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      padding: const EdgeInsets.only(left: 60.0, right: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Verse:",
                            style: verseheading,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xff393133).withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "\"For God so loved the world, that he gave his only Son, that whoever believes in him should not perish but have eternal life.\"",
                              style: versestylehome,
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/Volume.png",
                                height: 20,
                                width: 20,
                              ),
                              Spacer(),
                              Text(
                                "Jhon 3:16",
                                style: TextStyle(
                                  color: Color(0xff393133),
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.index.value++;
                              corsalcontroller.nextPage();
                            },
                            child: Container(
                              padding: EdgeInsets.all(15),
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(201),
                                color: Color(0xffDEC4C1),
                              ),
                              child: Center(
                                child: Text(
                                  "Next",
                                  style: bottonstyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(left: 60.0, right: 60),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Verse:",
                            style: verseheading,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xff393133).withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "\"For God so loved the world, that he gave his only Son, that whoever believes in him should not perish but have eternal life.\"",
                              style: versestylehome,
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/Volume.png",
                                height: 20,
                                width: 20,
                              ),
                              Spacer(),
                              Text(
                                "Jhon 3:16",
                                style: TextStyle(
                                  color: Color(0xff393133),
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(201),
                              color: Color(0xffDEC4C1),
                            ),
                            child: Center(
                              child: Text(
                                "Next",
                                style: bottonstyle,
                              ),
                            ),
                          ),
                        ],
                      )),
                ]),
            Obx(
              () => AnimatedSmoothIndicator(
                activeIndex: controller.index.value,
                count: 4,
                effect: SwapEffect(
                  dotHeight: 13,
                  dotWidth: 13,
                  activeDotColor: Color(0xffDEC4C1),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
