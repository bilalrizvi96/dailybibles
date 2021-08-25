import 'package:dailybible/Views/BottomNavigationSelection/BottomNavigationSelection.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';
import 'package:path/path.dart';

class SplashController extends GetxController {
  var sp = GetStorage();

  @override
  void onInit() {
    // TODO: implement onInit
    // sp.erase();
    // FirebaseMessaging.instance.getInitialMessage().then((message) {
    //   if (message != null) {}
    // });
    // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    //   if (message != null) {
    //     // flutterLocalNotificationsPlugin.show(
    //     //     notification.hashCode,
    //     //     notification.title,
    //     //     notification.body,
    //     //     NotificationDetails(
    //     //       android: AndroidNotificationDetails(
    //     //         channel.id,
    //     //         channel.name,
    //     //         channel.description,
    //     //         // TODO add a proper drawable resource to android, for now using
    //     //         //      one that already exists in example app.
    //     //         icon: 'launch_background',
    //     //       ),
    //     //     ));
    //   }
    // });
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   if (message != null) {
    //     // flutterLocalNotificationsPlugin.show(
    //     //     notification.hashCode,
    //     //     notification.title,
    //     //     notification.body,
    //     //     NotificationDetails(
    //     //       android: AndroidNotificationDetails(
    //     //         channel.id,
    //     //         channel.name,
    //     //         channel.description,
    //     //         // TODO add a proper drawable resource to android, for now using
    //     //         //      one that already exists in example app.
    //     //         icon: 'launch_background',
    //     //       ),
    //     //     ));
    //   }
    // });
    super.onInit();
    Future.delayed(Duration(seconds: 3), () async {
      // Get.off(FindFoodScreen());
      // Get.toNamed(
      //     sp.read("token") != null ? '/allresturants' : '/FindFoodScreen');
      // log(sp.read("token"));

      // final path = await initDeleteDb('');

      Get.off(BottomNavigationSelection());

      // Get.off(sp.read("token") != null ? SignupScreen() : LoginScreen());
    });
  }
}
