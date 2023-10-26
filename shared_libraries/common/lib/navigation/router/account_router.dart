import 'package:common/navigation/argument/argument.dart';
import 'package:common/navigation/router/app_router.dart';

import '../navigation_helper.dart';

abstract class AccountRouter {
  void navigateToEditProfile();
  void navigateToSettings();
  void navigateToDeliveryAddress();
  void navigateToDeliveryAddressEditor();
  Future<dynamic>? navigateToDeliveryAddressEditorAsync();
  void navigateToAccountBankScreen();
  Future<dynamic>? navigateToAccountBankEditor({
    BankArgument? argument,
  });
  void navigateToCommonWebview({
    required WebviewArgument argument,
  });
  void navigateToNotificationSettings();
  Future<dynamic>? createVerificationId();
  Future<dynamic>? navigateToCameraView();
  void goBack({String? arguments});
}

class AccountRouterImpl implements AccountRouter {
  final NavigationHelper navigationHelper;

  AccountRouterImpl({
    required this.navigationHelper,
  });

  @override
  void navigateToEditProfile() => navigationHelper.pushNamed(
        AppRoutes.editProfile,
      );

  @override
  void navigateToSettings() => navigationHelper.pushNamed(
        AppRoutes.settings,
      );

  @override
  void navigateToDeliveryAddress() =>
      navigationHelper.pushNamed(AppRoutes.deliveryAddress);

  @override
  void navigateToDeliveryAddressEditor() =>
      navigationHelper.pushNamed(AppRoutes.deliveryAddressEditor);

  @override
  void navigateToCommonWebview({required WebviewArgument argument}) =>
      navigationHelper.pushNamed(
        AppRoutes.commonWebview,
        arguments: argument,
      );

  @override
  void navigateToNotificationSettings() =>
      navigationHelper.pushNamed(AppRoutes.notificationSettings);

  @override
  void navigateToAccountBankScreen() =>
      navigationHelper.pushNamed(AppRoutes.accountBankData);

  @override
  Future<dynamic>? navigateToAccountBankEditor({BankArgument? argument}) =>
      navigationHelper.pushNamed(
        AppRoutes.accountBankDataEditor,
        arguments: argument,
      );

  @override
  Future<dynamic>? createVerificationId() =>
      navigationHelper.pushNamed(AppRoutes.createVerificationId);

  @override
  Future<dynamic>? navigateToCameraView() {
    return navigationHelper.pushNamed(AppRoutes.camera);
  }

  @override
  void goBack({String? arguments}) {
    navigationHelper.pop(arguments);
  }

  @override
  Future<dynamic>? navigateToDeliveryAddressEditorAsync() {
    return navigationHelper.pushNamed(AppRoutes.deliveryAddressEditor);
  }
}
