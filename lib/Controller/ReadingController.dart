import 'dart:io';

import 'package:dailybible/Modals/oldTestamentModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ReadingController extends GetxController {
  var result = [].obs;
  // @override
  // void onInit() {
  //   super.onInit();
  //   calldb();
  // }

  calldb(oldTestamentModel selectedtestament, chapter selectedchapter) async {
    result.clear();
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, "example.db");
    final data = await rootBundle.load(join('assets', 'example.db'));
    final List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    // Write and flush the bytes written
    await File(path).writeAsBytes(bytes, flush: true);
    print(selectedchapter.length);
    print(await Directory(dirname(path)).create(
      recursive: true,
    ));
    final db = await openDatabase(path);
    const table = 'bible_fts';
    result.value.addAll(await db.rawQuery(
        'SELECT content FROM $table WHERE book=\"${selectedtestament.chapterrefname.toString()}\" AND chapter = \"${selectedchapter.length.toString()}\"'));
    // result = await db.rawQuery(
    //     'SELECT content FROM $table WHERE book=\"${selectedtestament.chapterrefname.toString()}\" AND chapter = \"${selectedchapter.length.toString()}\"');
    // db
    //     .query(table,
    //         whereArgs: [int.parse(selectedchapter)],
    //         where: 'book=' + selectedtestament.chaptername + 'And chapter= ?')
    //     .obs;
    // dynamic result = await db.rawQuery('SELECT * FROM $table');
    //

    for (var a in result) {
      print(a);
    }
    db.close();
    update();
  }
}
