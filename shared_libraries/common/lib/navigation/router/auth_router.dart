import 'package:common/navigation/argument/argument.dart';
import 'package:common/navigation/router/app_router.dart';

import '../navigation_helper.dart';

abstract class AuthRouter {
  void navigateToSignIn();

  void navigateToSignInWithoutReplacement();

  void navigateToSignUp();

  void goBack({String? arguments});

  void navigateToHome();

  void navigateToResetPassword();

  void navigateToTwoFa({TwoFaArgument? argument});

  void navigateToMain();
}

class AuthRouterImpl implements AuthRouter {
  final NavigationHelper navigationHelper;

  AuthRouterImpl({
    required this.navigationHelper,
  });

  @override
  void navigateToSignIn() =>
      navigationHelper.pushReplacementNamed(AppRoutes.signIn);

  @override
  void navigateToSignInWithoutReplacement() {
    navigationHelper.pushNamed(AppRoutes.signIn);
  }

  @override
  void navigateToSignUp() => navigationHelper.pushNamed(AppRoutes.signUp);

  @override
  void goBack({String? arguments}) => navigationHelper.pop(arguments);

  @override
  void navigateToHome() =>
      navigationHelper.pushReplacementNamed(AppRoutes.home);

  @override
  void navigateToResetPassword() =>
      navigationHelper.pushNamed(AppRoutes.forgotPassword);

  @override
  void navigateToMain() {
    navigationHelper.pushNamedAndRemoveUntil(
      AppRoutes.main,
    );
  }

  @override
  void navigateToTwoFa({TwoFaArgument? argument}) {
    navigationHelper.pushNamed(
      AppRoutes.twoFa,
      arguments: argument,
    );
  }
}
