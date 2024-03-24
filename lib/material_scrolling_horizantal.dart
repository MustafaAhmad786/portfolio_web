import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class CostomScrollingHorizantal extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices =>
      {PointerDeviceKind.mouse, PointerDeviceKind.touch};
}
