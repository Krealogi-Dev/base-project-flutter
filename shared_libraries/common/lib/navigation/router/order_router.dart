import 'package:common/navigation/argument/argument.dart';
import 'package:common/navigation/router/app_router.dart';

import '../navigation_helper.dart';

abstract class OrderRouter {
  void goBack({String? arguments});

  void goToDetailOrder({String? orderId});

  void goToOrderCreate({
    CreateOrderArgument? argument,
  });

  void goToAdressFormScreen();

  void goToOrderListScreen();

  void goToOrderListScreenThenMain();

  void goToBatchListScreen();

  void goToOngkirCheckScreen();

  void goToResiCheckScreen();

  void goToCreateTicket({
    CreateTicketScreenArgument? argument,
  });

  void goToMain();

  void goToBatchOrderList({
    BatchOrderListArgument? argument,
  });

  void goToClaimListScreen();

  void goToScoreCheckScreen();

  void goToLeadsScreen();
}

class OrderRouterImpl implements OrderRouter {
  final NavigationHelper navigationHelper;

  OrderRouterImpl({
    required this.navigationHelper,
  });

  @override
  void goBack({String? arguments}) => navigationHelper.pop(arguments);

  @override
  void goToDetailOrder({String? orderId}) {
    navigationHelper.pushNamed(
      AppRoutes.orderDetail,
      arguments: orderId,
    );
  }

  @override
  void goToOrderCreate({CreateOrderArgument? argument}) {
    navigationHelper.pushNamed(
      AppRoutes.orderCreate,
      arguments: argument,
    );
  }

  @override
  void goToAdressFormScreen() {
    navigationHelper.pushNamed(AppRoutes.orderAddressFormScreen);
  }

  @override
  void goToOrderListScreen() {
    navigationHelper.pushNamed(AppRoutes.orderList);
  }

  @override
  void goToBatchListScreen() {
    navigationHelper.pushNamed(AppRoutes.batchList);
  }

  @override
  void goToMain() {
    navigationHelper.pushNamedAndRemoveUntil(
      AppRoutes.main,
    );
  }

  @override
  void goToCreateTicket({CreateTicketScreenArgument? argument}) {
    navigationHelper.pushNamed(AppRoutes.ticketCreate, arguments: argument);
  }

  @override
  void goToBatchOrderList({BatchOrderListArgument? argument}) {
    navigationHelper.pushNamed(
      AppRoutes.batchOrderList,
      arguments: argument,
    );
  }

  @override
  void goToOngkirCheckScreen() {
    navigationHelper.pushNamed(
      AppRoutes.ongkirCheck,
    );
  }

  @override
  void goToResiCheckScreen() {
    navigationHelper.pushNamed(
      AppRoutes.resiCheck,
    );
  }

  @override
  void goToClaimListScreen() {
    navigationHelper.pushNamed(
      AppRoutes.claimList,
    );
  }

  @override
  void goToScoreCheckScreen() {
    navigationHelper.pushNamed(AppRoutes.scoreCheck);
  }

  @override
  void goToOrderListScreenThenMain() {
    navigationHelper.pushNamed(AppRoutes.orderList)?.then(
        (value) => navigationHelper.pushNamedAndRemoveUntil(AppRoutes.main));
  }

  @override
  void goToLeadsScreen() {
    navigationHelper.pushNamed(AppRoutes.leads);
  }
}
