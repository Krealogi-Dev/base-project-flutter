class FirebaseIosAlertModel {
  FirebaseIosAlertModel.fromJson(Map<dynamic, dynamic> parsedJson)
      : title = parsedJson['title'] as String,
        body = parsedJson['body'] as String;

  final String title, body;
}