import 'package:flutter/widgets.dart';

class CustomScrollBehavior extends ScrollBehavior {
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return ClampingScrollPhysics(
      parent: super.getScrollPhysics(context),
    );
  }
}
