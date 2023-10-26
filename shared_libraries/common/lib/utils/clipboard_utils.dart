import 'package:flutter/services.dart';

class ClipboardUtils {
  static Future copyText({
    required String text,
  }) async {
    return await Clipboard.setData(ClipboardData(
      text: text,
    ));
  }
}
