import 'dart:io';

import 'package:dailybible/Modals/oldTestamentModel.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class BookController extends GetxController {
  List<chapter> test = [];

  var oldlist = [
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Genesis",
        chapterrefname: "Gen",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Exdous",
        chapterrefname: "Exod",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Leviticus",
        chapterrefname: "Lev",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Number",
        chapterrefname: "Num",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Deutronomy",
        chapterrefname: "Deut",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Joshua",
        chapterrefname: "Josh",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Judges",
        chapterrefname: "Judg",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Ruth",
        chapterrefname: "Ruth",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "1 Samuel",
        chapterrefname: "1Sam",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "2 Samuel",
        chapterrefname: "2Sam",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "1 Kings",
        chapterrefname: "1Kgs",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "2 Kings",
        chapterrefname: "2Kgs",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "1 Chronicles",
        chapterrefname: "1Chr",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "2 Chronicles",
        chapterrefname: "2Chr",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Ezra",
        chapterrefname: "Ezra",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Nehemiah",
        chapterrefname: "Neh",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Esther",
        chapterrefname: "Esth",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Job",
        chapterrefname: "Job",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chapterrefname: "Ps",
        chaptername: "Psalms",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Proverbs",
        chapterrefname: "Prov",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chapterrefname: "Eccl",
        chaptername: "Ecclesiastes",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Song of Solomon",
        chapterrefname: "Song",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Isaiah",
        chapterrefname: "Isa",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Jeremiah",
        chapterrefname: "Jer",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Lamentations",
        chapterrefname: "Lam",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Ezekiel",
        chapterrefname: "Ezek",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Daniel",
        chapterrefname: "Dan",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Hosea",
        chapterrefname: "Hos",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Joel",
        chapterrefname: "Joel",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Amos",
        chapterrefname: "Amos",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Obadiah",
        chapterrefname: "Obad",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Jonah",
        chapterrefname: "Jonah",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Nahum",
        chapterrefname: "Nah",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Habakkuk",
        chapterrefname: "Hab",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Obadiah",
        chapterrefname: "Obad",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Jonah",
        chapterrefname: "Jonah",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Nahum",
        chapterrefname: "Nah",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Habakkuk",
        chapterrefname: "Hab",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Zephaniah",
        chapterrefname: "Zeph",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Haggai",
        chapterrefname: "Hag",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Zechariah",
        chapterrefname: "Zech",
        testement: "old"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Malachi",
        chapterrefname: "Mal",
        testement: "old"),
  ].obs;
  var newList = [
    oldTestamentModel(
        selected: false.obs,
        chapterrefname: "Matt",
        chaptername: "Matthew",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Mark",
        chapterrefname: "Mark",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chapterrefname: "Luke",
        chaptername: "Luke",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "John",
        chapterrefname: "John",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Acts",
        chapterrefname: "Acts",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Romans",
        chapterrefname: "Rom",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "1 Corinthians",
        chapterrefname: "1Cor",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "2 Corinthians",
        chapterrefname: "2Cor",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Galatians",
        chapterrefname: "Gal",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Ephesians",
        chapterrefname: "Eph",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Philippians",
        chapterrefname: "Phil",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Colossians",
        chapterrefname: "Col",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "1 Thessalonians",
        chapterrefname: "1Thess",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "2 Thessalonians",
        chapterrefname: "2Thess",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "1 Timothy",
        chapterrefname: "1Tim",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "2 Timothy",
        chapterrefname: "2Tim",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Titus",
        chapterrefname: "Titus",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Philemon",
        chapterrefname: "Phlm",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Hebrews",
        chapterrefname: "Heb",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "James",
        chapterrefname: "Jas",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "1 Peter",
        chapterrefname: "1Pet",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "2 Peter",
        chapterrefname: "2Pet",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "1 John",
        chapterrefname: "1John",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "2 John",
        chapterrefname: "1John",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "3 John",
        chapterrefname: "1John",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Jude",
        chapterrefname: "Jude",
        testement: "new"),
    oldTestamentModel(
        selected: false.obs,
        chaptername: "Revelation",
        chapterrefname: "Rev",
        testement: "new"),
  ];
  late oldTestamentModel selectedtestament;
  late chapter selectedchapter;

  setselectedtestament(model) {
    if (model.selected == true) {
      selectedtestament = model;
    } else {
      selectedtestament = oldTestamentModel();
    }
    testing();
  }

  setselectedchapter(model) {
    if (model.selected == true) {
      selectedchapter = model;
      for (var m in test) {
        if (m.length.toString() != model.length.toString()) {
          m.selected.value = false;
        }
      }
      // calldbverse(selectedtestament,selectedchapter);
    } else {
      selectedchapter = chapter();
    }
    update();
  }

  testing() async {
    test.clear();
    var check = await calldb(
      selectedtestament,
    );
    if (check != null) {
      for (int i = 1; i <= check.length; i++) {
        test.add(chapter(length: i, selected: false.obs));
      }
    }
    update();
  }

  calldb(
    oldTestamentModel selectedtestament,
  ) async {
    if (selectedtestament.chapterrefname != null) {
      final databasePath = await getDatabasesPath();
      final path = join(databasePath, "example.db");
      final data = await rootBundle.load(join('assets', 'example.db'));
      final List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      // Write and flush the bytes written
      await File(path).writeAsBytes(bytes, flush: true);
      // print(selectedchapter.length);
      print(await Directory(dirname(path)).create(
        recursive: true,
      ));
      final db = await openDatabase(path);
      const table = 'bible';
      var result = await db.rawQuery(
          'SELECT DISTINCT(chapter) FROM $table WHERE book=\'${selectedtestament.chapterrefname.toString()}\'');
      // db
      //     .query(table,
      //         whereArgs: [int.parse(selectedchapter)],
      //         where: 'book=' + selectedtestament.chaptername + 'And chapter=  ?')
      //     .obs;
      // dynamic result = await db.rawQuery('SELECT * FROM $table');
      //

      db.close();
      return result;
    }
  }

  // calldbverse(
  //     oldTestamentModel selectedtestament, chapter selectedchapter) async {
  //   if (selectedchapter.chapterrefname != null) {
  //     final databasePath = await getDatabasesPath();
  //     final path = join(databasePath, "example.db");
  //     final data = await rootBundle.load(join('assets', 'example.db'));
  //     final List<int> bytes =
  //         data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  //     // Write and flush the bytes written
  //     await File(path).writeAsBytes(bytes, flush: true);
  //     // print(selectedchapter.length);
  //     print(await Directory(dirname(path)).create(
  //       recursive: true,
  //     ));
  //     final db = await openDatabase(path);
  //     const table = 'bible';
  //     var result = await db.rawQuery(
  //         'SELECT DISTINCT(chapter) FROM $table WHERE book=\'${selectedtestament.chapterrefname.toString()}\'');
  //     // db
  //     //     .query(table,
  //     //         whereArgs: [int.parse(selectedchapter)],
  //     //         where: 'book=' + selectedtestament.chaptername + 'And chapter=  ?')
  //     //     .obs;
  //     // dynamic result = await db.rawQuery('SELECT * FROM $table');
  //     //
  //
  //     db.close();
  //     return result;
  //   }
  // }
}
