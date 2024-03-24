import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  final Widget? mobilelarge;
  final Widget? tablet;
  const Responsive(
      {super.key,
      required this.mobile,
      required this.desktop,
      this.mobilelarge,
      this.tablet});

  @override
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }

  @override
  static bool isMobilelarge(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  @override
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  @override
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1100;
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    if (_size.width >= 1100) {
      return desktop;
    } else if (_size.width >= 700 && tablet != null) {
      return tablet!;
    } else if (_size.width >= 500 && mobilelarge != null) {
      return mobilelarge!;
    } else {
      return mobile;
    }
  }
}
