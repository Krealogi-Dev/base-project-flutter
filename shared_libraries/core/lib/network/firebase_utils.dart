import 'dart:convert';
import 'dart:io';
import 'package:core/network/models/models.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseUtils {
  FirebaseUtils({required this.firebaseMessaging, required this.flavor});
  final FirebaseMessaging firebaseMessaging;
  final String flavor;

  void initFirebase() async {
    await firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }

  static void configFirebase() async {
    await Firebase.initializeApp(
      // options: const FirebaseOptions(
    //     apiKey: "AIzaSyB91wU-sGo0tpyQcH3sVD6DD0GwkKPp9Os",
    //     appId: "1:936627179977:android:2902c2d9ae08e1dae4d818",
    //     messagingSenderId: "936627179977",
    //     projectId: "lincah-id-9e62f",
    //   ),
    );

    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) async {
        // message.notification;
        
        if (message != null) _showFirebaseNotification(message);
      },
    );

    FirebaseMessaging.onBackgroundMessage((RemoteMessage message) async {
      if (message != null) _showFirebaseNotification(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((remoteMessage) {
      if (remoteMessage != null) _notificationTapOnBackground(remoteMessage);
    });
  }

  static void setServiceAndroid(Function(FirebaseModel) serviceFunction) {
    serviceFunction = serviceFunction;
  }

  // static void setServiceIOS(Function(FirebaseIosModel) serviceFunction) {
  //   serviceFunctionIOS = serviceFunction;
  // }

  Future<String?> getToken() async {
    return await firebaseMessaging.getToken();
  }

  static Future<void> _showFirebaseNotification(RemoteMessage message) async {
    print('configFirebase() notif masuk');
    print('configFirebase() : $message');
    if (Platform.isAndroid) {
      final FirebaseModel dataModel = FirebaseModel(
          data: FirebaseDataModel.fromJson(message.data),
          notification: FirebaseNotificationModel(
            body: message.notification?.body,
            title: message.notification?.title,
          ));

      if (dataModel.data?.action == 'saldo-masuk') {
        // notifHandler.showNotif(dataModel);
        // notifHandler.onNotifRefresh(dataModel.data?.action);
      } else if (dataModel.data?.action == 'success-create-order') {
        //     notifHandler.onSelectNotification(dataModel?.data?.action ?? '');
      } else {
        // TODO: default action
      }
      // notifHandler.showNotif(dataModel);
    } else {
      print(message);
      FirebaseIosModel dataModel = FirebaseIosModel.fromJson(message.data);
      print(dataModel);
      if (dataModel.action == 'saldo-masuk') {
        // notifHandler.showNotifIOS(dataModel);
        // notifHandler.onNotifRefresh(dataModel.data?.action);
      } else if (dataModel.action == 'success-create-order') {
        // String payload = dataModel.action ?? '';
        // final Map<String, dynamic>? extras = dataModel.extras;
        // final String reservasiId = extras?['reservasiId'] as String;
        // payload = payload + '/' + reservasiId;
        //     notifHandler.onSelectNotification(dataModel?.data?.action ?? '');
        // notifHandler.onSelectNotification(payload);
      } else {
        //  if (serviceFunctionIOS != null) serviceFunctionIOS!(dataModel);
      }
      // notifHandler.showNotif(dataModel);
    }
  }

  static Future<void> _notificationTapOnBackground(
      RemoteMessage message) async {
    if (Platform.isIOS) {
      print('_showFirebaseNotif masuk sini');
      final FirebaseIosModel dataModel =
          FirebaseIosModel.fromJson(message.data);
      final Map<String, dynamic>? dataExtra = dataModel.extras;
      String data = dataModel.action ?? '';
      if (dataModel.action == 'saldo-masuk') {
      } else if (dataModel.action == 'success-create-order') {
        data = '$data/${dataExtra?['orderId'] ?? ''}';
      } else {
        // serviceFunctionIOS(dataModel);
      }
      // notifHandler.onSelectNotification(data);
    } else {
      final FirebaseModel dataModel = FirebaseModel(
          data: FirebaseDataModel.fromJson(message.data),
          notification: FirebaseNotificationModel(
              body: message.notification?.body,
              title: message.notification?.title));

      final Map<String, dynamic> dataExtra = dataModel.data?.extras == null
          ? <String, dynamic>{}
          : jsonDecode(dataModel.data?.extras ?? '') as Map<String, dynamic>;

      String data = dataModel.data?.action ?? '';
      if (dataModel.data?.action == 'saldo-masuk') {
      } else if (dataModel.data?.action == 'success-create-order') {
        data = '$data/${dataExtra['orderId'] ?? ''}';
      } else {
        // serviceFunction(dataModel);
      }
      // notifHandler.onSelectNotification(data);
    }
  }

  // static Future<void> _firebasePushHandler(RemoteMessage remoteMessage) async {
  //   print("Datanyaaa : $remoteMessage");
  //   createNewNotification();
  // }

  // static Future<void> createNewNotification() async {
  //   bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
  //   // if (!isAllowed) isAllowed = await displayNotificationRationale();
  //   if (!isAllowed) return;

  //   await AwesomeNotifications().createNotification(
  //       content: NotificationContent(
  //           id: -1, // -1 is replaced by a random number
  //           channelKey: 'alerts',
  //           title: 'Huston! The eagle has landed!',
  //           body:
  //               "A small step for a man, but a giant leap to Flutter's community!",
  //           bigPicture: 'https://storage.googleapis.com/cms-storage-bucket/d406c736e7c4c57f5f61.png',
  //           largeIcon: 'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
  //           //'asset://assets/images/balloons-in-sky.jpg',
  //           notificationLayout: NotificationLayout.BigPicture,
  //           payload: {'notificationId': '1234567890'}),
  //       actionButtons: [
  //         NotificationActionButton(key: 'REDIRECT', label: 'Redirect'),
  //         NotificationActionButton(
  //             key: 'REPLY',
  //             label: 'Reply Message',
  //             requireInputText: true,
  //             actionType: ActionType.SilentAction),
  //         NotificationActionButton(
  //             key: 'DISMISS',
  //             label: 'Dismiss',
  //             actionType: ActionType.DismissAction,
  //             isDangerousOption: true)
  //       ]);
  // }
}