import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'dart:developer';
import 'dart:io';
import 'package:sqflite/sqflite.dart';

class NavController extends GetxController {
  var _selectedIndex = 0.obs;

  get selectedIndex => _selectedIndex.value;
  set selectedIndex(index) => _selectedIndex.value = index;
}
