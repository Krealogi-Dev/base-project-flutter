class RegexUtils {
  static bool validatePhoneNumber({
    required String phoneNumber,
  }) {
    String pattern = r'^(^\+628|628|^08)\d{6,12}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(phoneNumber);
  }
}
