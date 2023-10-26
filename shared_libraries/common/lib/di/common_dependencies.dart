import 'package:common/navigation/navigation_helper.dart';
import 'package:common/navigation/router/order_router.dart';
import 'package:common/navigation/router/routes.dart';
import 'package:common/navigation/router/ticket_router.dart';
import 'package:dependencies/get_it/get_it.dart';

class CommonDependencies {
  CommonDependencies() {
    _navigation();
    _routers();
  }

  void _navigation() =>
      sl.registerLazySingleton<NavigationHelper>(() => NavigationHelperImpl());

  void _routers() {
    sl.registerLazySingleton<SplashRouter>(
      () => SplashRouterImpl(
        sl(),
      ),
    );
    sl.registerLazySingleton<AuthRouter>(
      () => AuthRouterImpl(
        navigationHelper: sl(),
      ),
    );
    sl.registerLazySingleton<HomeRouter>(
      () => HomeRouterImpl(
        navigationHelper: sl(),
      ),
    );
    sl.registerLazySingleton<AccountRouter>(
      () => AccountRouterImpl(
        navigationHelper: sl(),
      ),
    );
    sl.registerLazySingleton<OrderRouter>(
      () => OrderRouterImpl(
        navigationHelper: sl(),
      ),
    );
    sl.registerLazySingleton<TicketRouter>(
      () => TicketRouterImpl(
        navigationHelper: sl(),
      ),
    );
    sl.registerLazySingleton<BalanceRouter>(
      () => BalanceRouterImpl(
        navigationHelper: sl(),
      ),
    );
  }
}
