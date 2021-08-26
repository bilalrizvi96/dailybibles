import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dailybible/Controller/BookController.dart';
import 'package:dailybible/Controller/ReadingController.dart';
import 'package:dailybible/Modals/oldTestamentModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Helper.dart';
import '../../const.dart';

class Reading extends StatelessWidget {
  Reading({Key? key}) : super(key: key);
  CarouselController corsalcontroller = new CarouselController();
  ReadingController readingController = Get.put(ReadingController());
  BookController controller = Get.put(BookController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: CarouselSlider(
          carouselController: corsalcontroller,
          options: CarouselOptions(
              onPageChanged: (index, reason) async {
                readingController.result.clear();
                await readingController.calldb(
                  controller.selectedtestament,
                  chapter(length: index + 1),
                );
                // controller.index.value = index;
              },
              disableCenter: false,
              enlargeCenterPage: true,
              pageSnapping: true,

              // reverse: false,
              // autoPlay: false,
              // disableCenter: false,
              initialPage: controller.selectedchapter.length - 1,
              enableInfiniteScroll: false,
              height: MediaQuery.of(context).size.height,
              viewportFraction: 1.0),
          items: [
            for (int i = 0; i < controller.test.length; i++)
              GetBuilder(
                  init: readingController,
                  builder: (_) {
                    return readingController.result.isNotEmpty
                        ? Stack(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(top: 20, bottom: 20),
                                  color: Colors.white,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      children: [
                                        Wrap(
                                          children: [
                                            ListView.separated(
                                                separatorBuilder: (_, index) {
                                                  return Divider(
                                                    height: 1,
                                                    color: border,
                                                  );
                                                },
                                                shrinkWrap: true,
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                itemCount: readingController
                                                    .result.value.length,
                                                itemBuilder: (_, index) {
                                                  return Container(
                                                    padding: EdgeInsets.only(
                                                        left: 10, right: 10),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          flex: 1,
                                                          child: Text((index +
                                                                      1)
                                                                  .toString() +
                                                              " . "),
                                                        ),
                                                        Expanded(
                                                          flex: 10,
                                                          child: Text(
                                                            readingController
                                                                        .result
                                                                        .value[
                                                                            index]
                                                                        .toString() !=
                                                                    " "
                                                                ? readingController
                                                                    .result
                                                                    .value[
                                                                        index]
                                                                    .toString()
                                                                    .replaceAll(
                                                                        "{content:",
                                                                        "")
                                                                    .replaceAll(
                                                                        "}", "")
                                                                : " ",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black87),
                                                          ),
                                                        ),
                                                        // Expanded(
                                                        //   flex: 10,
                                                        //   child: Text(
                                                        //       readingController
                                                        //           .result[i - 1]
                                                        //               [index]
                                                        //           .toString()
                                                        //           .replaceAll(
                                                        //               "{content:", "")
                                                        //           .replaceAll(
                                                        //               "}", "")),
                                                        // ),
                                                      ],
                                                    ),
                                                  );
                                                }),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.navigate_before),
                                      Icon(Icons.navigate_next),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        : Container();
                  }),
          ]),
    );
  }
}
