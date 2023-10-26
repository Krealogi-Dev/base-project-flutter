import 'package:flutter/material.dart';

class DialogUtils {
  Future showPopupDialog(
    BuildContext context,
    Widget widget, {
    bool isDismissable = false,
  }) =>
      showDialog(
        context: context,
        barrierDismissible: isDismissable,
        builder: (context) => widget,
      );
}
