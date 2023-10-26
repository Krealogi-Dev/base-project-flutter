class ParamUtils {
  static String? getKey(String? value) => value == null ? null : '"$value"';
  static List<String>? getKeyDataRange(
    DateTime? startDateTime,
    DateTime? endDateTime,
  ) =>
      ['"$startDateTime"', '"$endDateTime"'];
}
