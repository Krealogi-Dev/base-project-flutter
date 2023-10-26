import 'package:common/navigation/argument/argument.dart';
import 'package:common/navigation/argument/ticket/header_detail_argument.dart';
import 'package:common/navigation/router/app_router.dart';

import '../navigation_helper.dart';

abstract class TicketRouter {
  void goBack({String? arguments});
  void goToTicketDetail({HeaderDetailArgument? args});
}

class TicketRouterImpl implements TicketRouter {
  final NavigationHelper navigationHelper;

  TicketRouterImpl({
    required this.navigationHelper,
  });

  @override
  void goBack({String? arguments}) => navigationHelper.pop(arguments);

  @override
  void goToTicketDetail({HeaderDetailArgument? args}) {
    navigationHelper.pushNamed(AppRoutes.ticketDetail, arguments: args);
  }
}
