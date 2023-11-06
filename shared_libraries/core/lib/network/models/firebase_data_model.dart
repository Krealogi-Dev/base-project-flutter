class FirebaseDataModel {
  FirebaseDataModel.fromJson(Map<dynamic, dynamic> parsedJson)
      : timeStamp = parsedJson['timestamp'] as String,
        message = parsedJson['message'] as String,
        extras = parsedJson['extras'] as String,
        action = parsedJson['action'] as String,
        title = parsedJson['title'] as String;

  final String timeStamp, message, extras, action, title;
}

class FirebaseNotificationModel {
  FirebaseNotificationModel({this.title = '', this.body = ''});

  FirebaseNotificationModel.fromJson(Map<dynamic, dynamic> parsedJson)
      : title = parsedJson['title'] as String,
        body = parsedJson['body'] as String;

  final String? title, body;
}