import 'package:alice/alice.dart';
import 'package:common/navigation/navigation_helper.dart';

class AliceHandler {
  AliceHandler();

  Alice get alice => _getAlice();

  Alice _getAlice() {
    final alice = Alice(
      showNotification: true,
      navigatorKey: NavigationHelperImpl.navigatorKey,
    );
    return alice;
  }
}
