import 'package:dailybible/Controller/BookController.dart';
import 'package:dailybible/Controller/ReadingController.dart';
import 'package:dailybible/Modals/oldTestamentModel.dart';
import 'package:dailybible/Views/Reading/Reading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const.dart';

class ChapterSeletion extends StatelessWidget {
  ChapterSeletion({Key? key, this.testament}) : super(key: key);
  BookController controller = Get.put(BookController());

  var testament;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Old Testament",
              style: verseheading,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // height: 250,
              //     child: Obx(() {
              //   return GridView.count(
              //       crossAxisCount: 4,
              //       childAspectRatio: 3,
              //       // padding: const EdgeInsets.all(8.0),
              //       mainAxisSpacing: 0,
              //       padding: EdgeInsets.zero,
              //       crossAxisSpacing: 0,
              //       shrinkWrap: true,
              //       children: controller.test.map((chapter model) {
              //         return GestureDetector(
              //           onTap: () {
              //             model.selected.value = !model.selected.value;
              //             controller.selectedchapter = model;
              //             for (var m in controller.test) {
              //               if (m.length.toString() != model.length.toString()) {
              //                 m.selected.value = false;
              //               }
              //             }
              //           },
              //           child: Container(
              //             decoration: BoxDecoration(
              //                 border: Border.all(color: border),
              //                 color: model.selected.value ? pink : Colors.white),
              //             child: Center(child: Text(model.length.toString())),
              //           ),
              //         );
              //       }).toList());
              // })
              child: GetBuilder<BookController>(
                init: controller,
                builder: (_) {
                  return GridView.count(
                      crossAxisCount: 4,
                      childAspectRatio: 3,
                      // padding: const EdgeInsets.all(8.0),
                      mainAxisSpacing: 0,
                      padding: EdgeInsets.zero,
                      crossAxisSpacing: 0,
                      shrinkWrap: true,
                      children: controller.test.map((chapter model) {
                        return GestureDetector(
                          onTap: () {
                            model.selected.value = !model.selected.value;
                            controller.setselectedchapter(model);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: border),
                                color:
                                    model.selected.value ? pink : Colors.white),
                            child: Center(child: Text(model.length.toString())),
                          ),
                        );
                      }).toList());
                },
              ),
            ),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              child: GestureDetector(
                onTap: () async {
                  ReadingController readingController =
                      Get.put(ReadingController());
                  if (controller.selectedchapter.length != null) {
                    await readingController.calldb(
                      controller.selectedtestament,
                      controller.selectedchapter,
                    );
                    Get.to(Reading());
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(101),
                      color: Color(0xffDEC4C1),
                    ),
                    child: Center(
                      child: Text(
                        "Select a book",
                        style: bottonstyle,
                      ),
                    ),
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
