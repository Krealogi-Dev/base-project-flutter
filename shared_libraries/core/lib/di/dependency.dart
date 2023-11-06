import 'package:core/network/alice_handler.dart';
import 'package:core/network/dio_handler.dart';
import 'package:core/network/firebase_messaging_handler.dart';
import 'package:core/network/socket_io_client_handler.dart';
import 'package:dependencies/dio/dio.dart';
import 'package:dependencies/get_it/get_it.dart';
import 'package:alice/alice.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class RegisterCoreModule {
  final String baseUrl;
  final String socketBaseUrl;

  RegisterCoreModule({
    required this.baseUrl,
    required this.socketBaseUrl,
  }) {
    _registerCore(
      baseUrl: baseUrl,
      socketBaseUrl: socketBaseUrl,
    );
  }

  _registerCore({
    required String baseUrl,
    required String socketBaseUrl,
  }) {
    sl.registerLazySingleton<Dio>(() => sl<DioHandler>().dio);
    sl.registerLazySingleton<Alice>(() => sl<AliceHandler>().alice);
    sl.registerLazySingleton<AliceHandler>(() => AliceHandler());
    sl.registerLazySingleton<FirebaseMessaging>(
        () => sl<FirebaseMessagingHandler>().firebaseMessagingHandler);
    // sl.registerLazySingleton<FirebaseMessagingHandler>(
    //     () => FirebaseMessagingHandler());
    sl.registerLazySingleton<io.Socket>(
        () => sl<SocketIoClientHandler>().socketInstance);
    sl.registerLazySingleton<SocketIoClientHandler>(
        () => SocketIoClientHandler(baseUrl: socketBaseUrl));
    sl.registerLazySingleton<FirebaseMessagingHandler>(
        () => FirebaseMessagingHandler());
    sl.registerLazySingleton<DioHandler>(
      () => DioHandler(
        sl(),
        alice: sl(),
        apiBaseUrl: baseUrl,
      ),
    );
  }
}
