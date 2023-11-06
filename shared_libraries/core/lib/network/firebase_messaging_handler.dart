import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMessagingHandler {
  FirebaseMessagingHandler();

  FirebaseMessaging get firebaseMessagingHandler => _getFirebaseMessaging();

  FirebaseMessaging _getFirebaseMessaging(){
    return FirebaseMessaging.instance;
  }
  
}