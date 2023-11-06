import 'dart:convert';

import 'models.dart';
class FirebaseIosModel {
  FirebaseIosModel.fromJson(Map<String, dynamic> parsedJson) {
    action = parsedJson['action'] as String;
    title = parsedJson['title'] as String;
    message = parsedJson['message'] as String;
    timestamp = parsedJson['timestamp'] as String;
    aps = parsedJson['aps'] == null
        ? null
        : FirebaseIosApsModel.fromJson(
            parsedJson['aps'] as Map<dynamic, dynamic>);
    extras = parsedJson['extras'] == null
        ? null
        : jsonDecode(parsedJson['extras'] as String) as Map<String, dynamic>;
  }

  String? action, title, message, timestamp;
  Map<String, dynamic>? extras;

  // final FirebaseIosExtrasModel extras;
  FirebaseIosApsModel? aps;
}