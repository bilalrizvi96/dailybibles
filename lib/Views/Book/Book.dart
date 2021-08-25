import 'package:dailybible/Controller/BookController.dart';
import 'package:dailybible/Modals/oldTestamentModel.dart';
import 'package:dailybible/Views/ChapterSeletion/ChapterSeletion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const.dart';

class Book extends StatelessWidget {
  Book({Key? key}) : super(key: key);
  BookController controller = Get.put(BookController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: true,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Old Testament",
                      style: verseheading,
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                        height: 250,
                        child: Obx(() {
                          return GridView.count(
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 4,
                              childAspectRatio: 3,
                              // padding: const EdgeInsets.all(8.0),
                              mainAxisSpacing: 0,
                              padding: EdgeInsets.zero,
                              crossAxisSpacing: 0,
                              shrinkWrap: true,
                              children: controller.oldlist
                                  .map((oldTestamentModel model) {
                                return GestureDetector(
                                  onTap: () {
                                    model.selected.value =
                                        !model.selected.value;
                                    controller.setselectedtestament(model);
                                    for (var m in controller.oldlist) {
                                      if (m.chaptername.toString() !=
                                          model.chaptername.toString()) {
                                        m.selected.value = false;
                                      }
                                    }
                                    for (var m in controller.newList) {
                                      m.selected.value = false;
                                    }
                                  },
                                  child: Container(
                                    // height: 10,
                                    // width: 50,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: border),
                                        color: model.selected.value
                                            ? pink
                                            : Colors.white),
                                    child: Center(
                                        child:
                                            Text(model.chaptername.toString())),
                                  ),
                                );
                              }).toList());
                        })),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "New Testament",
                      style: verseheading,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(child: Obx(() {
                      return GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 4,
                          childAspectRatio: 3,
                          // padding: const EdgeInsets.all(8.0),
                          mainAxisSpacing: 0,
                          padding: EdgeInsets.zero,
                          crossAxisSpacing: 0,
                          shrinkWrap: true,
                          children:
                              controller.newList.map((oldTestamentModel model) {
                            return GestureDetector(
                              onTap: () {
                                model.selected.value = !model.selected.value;
                                controller.setselectedtestament(model);

                                for (var m in controller.newList) {
                                  if (m.chaptername.toString() !=
                                      model.chaptername.toString()) {
                                    m.selected.value = false;
                                  }
                                }
                                for (var m in controller.oldlist) {
                                  m.selected.value = false;
                                }
                              },
                              child: Container(
                                // height: 10,
                                // width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: border),
                                    color: model.selected.value
                                        ? pink
                                        : Colors.white),
                                child: Center(
                                    child: Text(model.chaptername.toString())),
                              ),
                            );
                          }).toList());
                    })),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (controller.selectedtestament.chaptername != null) {
                        Get.to(ChapterSeletion(
                            testament: controller.selectedtestament));
                      }
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
                          "Select a book",
                          style: bottonstyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
