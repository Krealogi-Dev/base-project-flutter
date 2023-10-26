// import 'package:dependencies/awesome_notifications/awesome_notifications.dart';
// import 'package:flutter/material.dart';

// class NotificationController {
//   static ReceivedAction? initialAction;
//   static Future<void> initializeLocalNotifications() async {
//     await AwesomeNotifications().initialize(null, [
//       NotificationChannel(
//         channelKey: 'alerts',
//         channelName: 'Alerts',
//         channelDescription: 'Notification tests as alerts',
//         playSound: true,
//         onlyAlertOnce: true,
//         groupAlertBehavior: GroupAlertBehavior.Children,
//         importance: NotificationImportance.High,
//         defaultPrivacy: NotificationPrivacy.Private,
//         defaultColor: Colors.deepPurple,
//         ledColor: Colors.deepPurple,
//       )
//     ]);
//     // Get initial notification action is optional
//     initialAction = await AwesomeNotifications()
//         .getInitialNotificationAction(removeFromActionEvents: false);
//   }
// }
