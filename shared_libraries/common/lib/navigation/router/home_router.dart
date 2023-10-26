import 'package:common/navigation/argument/webview/webview_argument.dart';
import 'package:common/navigation/router/app_router.dart';

import '../navigation_helper.dart';

abstract class HomeRouter {
  void navigateToHome();
  void navigateToCommonWebview({
    required WebviewArgument argument,
  });
  void navigateToBalanceDashboard();
}

class HomeRouterImpl implements HomeRouter {
  final NavigationHelper navigationHelper;

  HomeRouterImpl({
    required this.navigationHelper,
  });

  @override
  void navigateToHome() =>
      navigationHelper.pushReplacementNamed(AppRoutes.home);

  @override
  void navigateToCommonWebview({
    required WebviewArgument argument,
  }) =>
      navigationHelper.pushNamed(
        AppRoutes.commonWebview,
        arguments: argument,
      );

  @override
  void navigateToBalanceDashboard() =>
      navigationHelper.pushNamed(AppRoutes.balanceDashboard);
}
