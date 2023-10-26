import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

/*CustomAppLiquidRefresher*/
Widget CustomAppLiquidRefresher({
  required Widget child,
  required Future<void> Function() onRefresh,
  required Color bgColor,
}) =>
    LiquidPullToRefresh(
      color: bgColor,
      backgroundColor: Colors.white,
      onRefresh: onRefresh,
      showChildOpacityTransition: false,
      springAnimationDurationInMilliseconds: 200,
      child: child,
    );
