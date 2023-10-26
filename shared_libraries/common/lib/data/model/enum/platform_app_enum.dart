enum PlatformAppEnum { android, ios }

extension PlatformAppEnumExtension on PlatformAppEnum {
  static PlatformAppEnum? fromStringKey(String key) {
    if (key == PlatformAppEnum.android.key) {
      return PlatformAppEnum.android;
    } else if (key == PlatformAppEnum.ios.key) {
      return PlatformAppEnum.ios;
    } else {
      return null;
    }
  }

  String get keyFriendly {
    switch (this) {
      case PlatformAppEnum.android:
        return "android";
      case PlatformAppEnum.ios:
        return "ios";
    }
  }

  String get key {
    switch (this) {
      case PlatformAppEnum.android:
        return "android";
      case PlatformAppEnum.ios:
        return "ios";
    }
  }
}
