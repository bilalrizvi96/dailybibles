// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:flutter/material.dart';
//
// class TestNotification extends StatelessWidget {
//   const TestNotification({Key? key}) : super(key: key);
//
//   show() async {
//     String timezom = await AwesomeNotifications().getLocalTimeZoneIdentifier();
//     AwesomeNotifications().createNotification(
//       content: NotificationContent(
//           id: 1,
//           channelKey: 'key1',
//           title: 'This is Notification title',
//           body: 'This is Body of Noti',
//           bigPicture:
//               'https://protocoderspoint.com/wp-content/uploads/2021/05/Monitize-flutter-app-with-google-admob-min-741x486.png',
//           notificationLayout: NotificationLayout.BigPicture),
//       schedule:
//           NotificationInterval(interval: 2, timeZone: timezom, repeats: true),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         child: FlatButton(
//           onPressed: () => show(),
//           child: Text('press'),
//         ),
//       ),
//     );
//   }
// }
