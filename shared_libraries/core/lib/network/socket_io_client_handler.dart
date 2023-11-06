import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketIoClientHandler {
  final String baseUrl;

  SocketIoClientHandler({
    required this.baseUrl,
  });

  io.Socket get socketInstance => _getSocket();

  io.Socket _getSocket() {
    final option = io.OptionBuilder()
        .setTransports(['websocket'])
        .disableAutoConnect()
        .build();
    io.Socket socket = io.io(baseUrl, option);
    return socket;
  }
}
