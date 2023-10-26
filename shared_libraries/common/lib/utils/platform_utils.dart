import 'dart:io';

import 'package:common/data/model/enum/platform_app_enum.dart';

class PlatformUtils {
  static PlatformAppEnum getPlatform() {
    if (Platform.isIOS) {
      return PlatformAppEnum.ios;
    }
    return PlatformAppEnum.android;
  }
}
