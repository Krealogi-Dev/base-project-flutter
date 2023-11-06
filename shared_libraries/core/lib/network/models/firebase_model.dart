import 'firebase_data_model.dart';

class FirebaseModel {
  FirebaseModel({this.data, this.notification});

  FirebaseModel.fromJson(Map<dynamic, dynamic> parsedJson)
      : data = FirebaseDataModel.fromJson(
            parsedJson['data'] as Map<dynamic, dynamic>),
        notification = FirebaseNotificationModel.fromJson(
            parsedJson['notification'] as Map<dynamic, dynamic>);

  final FirebaseDataModel? data;
  final FirebaseNotificationModel? notification;
}