import 'package:dailybible/Controller/HomeController.dart';
import 'package:dailybible/Views/HomeVerse/HomeVerseMorning.dart';
import 'package:dailybible/Views/HomeVerse/HomeVerseNight.dart';
import 'package:dailybible/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Home",
          style: appbarstyle,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 60.0, right: 60),
        child: Obx(
          () => controller.visible.value
              ? GestureDetector(
                  onPanUpdate: (details) {
                    // Swiping in right direction.
                    if (details.delta.dx < 0) {
                      controller.index.value++;
                      controller.visible.value = false;
                    }

                    // // Swiping in left direction.
                    // if (details.delta.dx < 0) {}
                  },
                  child: AnimatedOpacity(
                    // If the widget is visible, animate to 0.0 (invisible).
                    // If the widget is hidden, animate to 1.0 (fully visible).
                    opacity: controller.visible.value ? 1.0 : 0.0,
                    duration: const Duration(seconds: 1),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/Home Day Background.png"),
                              fit: BoxFit.fill)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/Sun.png",
                                height: 30,
                                width: 30,
                              ),
                              Text(
                                "Verse for the day",
                                style: verseheading,
                              ),
                            ],
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
                                "assets/Volume.png",
                                height: 20,
                                width: 20,
                              ),
                              Spacer(),
                              Text("Jhon 3:16", style: verseindex)
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(HomeVerseMorning());
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
                                  "View Details",
                                  style: bottonstyle,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          AnimatedSmoothIndicator(
                            activeIndex: controller.index.value,
                            count: 2,
                            effect: SwapEffect(
                              dotHeight: 13,
                              dotWidth: 13,
                              activeDotColor: Color(0xffDEC4C1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              : GestureDetector(
                  onPanUpdate: (details) {
                    // Swiping in right direction.
                    // if (details.delta.dx > 0) {
                    //
                    // }

                    // // Swiping in left direction.
                    if (details.delta.dx > 0) {
                      controller.index.value--;
                      controller.visible.value = true;
                    }
                  },
                  child: AnimatedOpacity(
                    // If the widget is visible, animate to 0.0 (invisible).
                    // If the widget is hidden, animate to 1.0 (fully visible).
                    opacity: !controller.visible.value ? 1.0 : 0.0,
                    duration: const Duration(seconds: 1),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/Home Nigh background.png"),
                              fit: BoxFit.fill)),
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
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xff393133).withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "\"Delight yourself in the LORD, and he will give you the desires of your heart.\"",
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
                              Text("Psalms 37:4", style: verseindex)
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(HomeVerseNight());
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
                                  "View Details",
                                  style: bottonstyle,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          AnimatedSmoothIndicator(
                            activeIndex: controller.index.value,
                            count: 2,
                            effect: SwapEffect(
                              dotHeight: 13,
                              dotWidth: 13,
                              activeDotColor: Color(0xffDEC4C1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
