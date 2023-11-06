
import 'models.dart';

class FirebaseIosApsModel {
  FirebaseIosApsModel.fromJson(Map<dynamic, dynamic> parsedJson)
      : alert = parsedJson['alert'] == null
            ? null
            : FirebaseIosAlertModel.fromJson(
                parsedJson['alert'] as Map<dynamic, dynamic>),
        category = parsedJson['category'] as String,
        sound = parsedJson['sound'] as String;

  final FirebaseIosAlertModel? alert;
  final String category, sound;
}