import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ReminderAlamcontroller extends GetxController {
  var visibilty = false.obs;
  DateTime? chosenDateTime;
  updates(var value) {
    visibilty.value = value;
    update();
  }

  show() async {
    String timezom = await AwesomeNotifications().getLocalTimeZoneIdentifier();
    print(timezom);
    if (chosenDateTime != null) {
      if (chosenDateTime!.toUtc().toString() == timezom) {
        // AwesomeNotifications().createNotification(
        //   content: NotificationContent(
        //       id: 1,
        //       channelKey: 'key1',
        //       title: 'This is Notification title',
        //       body: 'This is Body of Noti',
        //       bigPicture:
        //       'https://protocoderspoint.com/wp-content/uploads/2021/05/Monitize-flutter-app-with-google-admob-min-741x486.png',
        //       notificationLayout: NotificationLayout.BigPicture),
        //   schedule:
        //   NotificationInterval(interval: 2, timeZone: timezom, repeats: true),
        // );
      }
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    update();
  }

  void showDatePicker(ctx) {
    // showCupertinoModalPopup is a built-in function of the cupertino library
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
              height: 500,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Container(
                    height: 400,
                    child: CupertinoDatePicker(
                        minimumDate: DateTime.now(),
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: (val) {
                          chosenDateTime = val;
                          update();
                        }),
                  ),

                  // Close the modal
                  CupertinoButton(
                    child: Text('OK'),
                    onPressed: () {
                      Navigator.of(ctx).pop();
                      update();
                    },
                  )
                ],
              ),
            ));
  }
}
