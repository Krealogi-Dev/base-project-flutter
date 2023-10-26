// ignore_for_file: constant_identifier_names, avoid_classes_with_only_static_members
import 'package:common/constants/app_constants.dart';

enum Flavor { development, production, staging }

class Config {
  static Flavor appFlavor = Flavor.production;

  static String get title {
    switch (appFlavor) {
      case Flavor.production:
        return "Lincah ID";
      case Flavor.development:
        return "Lincah ID Dev";
      case Flavor.staging:
        return "Lincah ID Stg";
    }
  }

  static bool get isDebug {
    switch (appFlavor) {
      case Flavor.production:
        return false;
      case Flavor.staging:
        return false;
      case Flavor.development:
        return true;
    }
  }

  static String get backgroundFetchNotifierIOS {
    switch (appFlavor) {
      case Flavor.production:
        return PackageNameIos.backgroundFetchIosIdProd;
      case Flavor.development:
        return PackageNameIos.backgroundFetchIosIdProd;
      default:
        return PackageNameIos.backgroundFetchIosIdDev;
    }
  }

  static String get baseURL {
    switch (appFlavor) {
      case Flavor.development:
        return BaseUrl.baseUrlDev;
      case Flavor.production:
        return BaseUrl.baseUrlProd;
      case Flavor.staging:
        return BaseUrl.baseUrlStaging;
    }
  }

  static String get socketBaseUrl {
    switch (appFlavor) {
      case Flavor.development:
        return SocketBaseUrl.baseUrlDev;
      case Flavor.production:
        return SocketBaseUrl.baseUrlProd;
      case Flavor.staging:
        return SocketBaseUrl.baseUrlStaging;
    }
  }
}
