import 'package:common/navigation/router/app_router.dart';
import '../argument/argument.dart';
import '../navigation_helper.dart';

abstract class BalanceRouter {
  void navigateToDetail();
  Future<dynamic>? navigateToAddBalance();
  Future<dynamic>? navigateToWithdrawBalance();
  Future<dynamic>? navigateToDetailBalance({
    BalanceDetailArgument? argument,
  });
}

class BalanceRouterImpl implements BalanceRouter {
  final NavigationHelper navigationHelper;

  BalanceRouterImpl({
    required this.navigationHelper,
  });

  @override
  void navigateToDetail() {
    navigationHelper.pushReplacementNamed(AppRoutes.home);
  }

  @override
  Future<dynamic>? navigateToAddBalance() =>
      navigationHelper.pushNamed(AppRoutes.addBalance);

  @override
  Future? navigateToWithdrawBalance() =>
      navigationHelper.pushNamed(AppRoutes.withdrawBalance);

  @override
  Future? navigateToDetailBalance({
    BalanceDetailArgument? argument,
  }) =>
      navigationHelper.pushNamed(
        AppRoutes.detailBalance,
        arguments: argument,
      );
}
