import 'package:carousel_slider/carousel_slider.dart';
import 'package:dailybible/Controller/HomeverseMorningController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../const.dart';

class HomeVerseMorning extends StatelessWidget {
  HomeVerseMorning({Key? key}) : super(key: key);
  HomeverseMorningController controller = Get.put(HomeverseMorningController());
  CarouselController corsalcontroller = new CarouselController();
  @override
  Widget build(BuildContext context) {
    // var getScreenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
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
        body: Stack(
          children: [
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
                    height: MediaQuery.of(context).size.height,
                    viewportFraction: 1.0),
                items: [
                  Container(
                      padding: const EdgeInsets.only(left: 60.0, right: 60),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Verse:",
                            style: verseheading,
                          ),
                          SizedBox(
                            height: 10,
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
                                "assets/B-LOGO@3x.png",
                                height: 10,
                                width: 10,
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
                            height: 10,
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
                                borderRadius: BorderRadius.circular(101),
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
                      padding: const EdgeInsets.only(left: 60.0, right: 60),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Verse:",
                            style: verseheading,
                          ),
                          SizedBox(
                            height: 10,
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
                                "assets/B-LOGO@3x.png",
                                height: 10,
                                width: 10,
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
                            height: 10,
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
                                borderRadius: BorderRadius.circular(101),
                                color: Color(0xffDEC4C1),
                              ),
                              child: Center(
                                child: Text(
                                  "Skip",
                                  style: bottonstyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      color: Colors.white,
                      padding: const EdgeInsets.only(left: 60.0, right: 60),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Verse:",
                            style: verseheading,
                          ),
                          SizedBox(
                            height: 10,
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
                                "assets/B-LOGO@3x.png",
                                height: 10,
                                width: 10,
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
                            height: 10,
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
                                borderRadius: BorderRadius.circular(101),
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
                      padding: const EdgeInsets.only(left: 60.0, right: 60),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Verse:",
                            style: verseheading,
                          ),
                          SizedBox(
                            height: 10,
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
                                "assets/B-LOGO@3x.png",
                                height: 10,
                                width: 10,
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
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(101),
                              color: Color(0xffDEC4C1),
                            ),
                            child: Center(
                              child: Text(
                                "Ameen",
                                style: bottonstyle,
                              ),
                            ),
                          ),
                        ],
                      )),
                ]),
            Obx(
              () => Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: AnimatedSmoothIndicator(
                    activeIndex: controller.index.value,
                    count: 4,
                    effect: SwapEffect(
                      dotHeight: 13,
                      dotWidth: 13,
                      activeDotColor: Color(0xffDEC4C1),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
