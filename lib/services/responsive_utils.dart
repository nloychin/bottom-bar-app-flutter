import 'package:flutter/material.dart';

class ResponsiveUtils extends StatelessWidget {
  static const double _mobileWidthLimit = 650.0;
  static const double _tabletWidthLimit = 1100.0;

  final Widget screenWeb;
  final Widget screenTablet;
  final Widget screenMobile;

  const ResponsiveUtils({
    Key? key,
    required this.screenWeb,
    required this.screenTablet,
    required this.screenMobile,
  }) : super(key: key);

  static bool isScreenWeb(final BuildContext context) =>
      MediaQuery.of(context).size.width >= _tabletWidthLimit;

  static bool isScreenTablet(final BuildContext context) =>
      MediaQuery.of(context).size.width >= _mobileWidthLimit &&
      MediaQuery.of(context).size.width <= _tabletWidthLimit;

  static bool isScreenMobile(final BuildContext context) =>
      MediaQuery.of(context).size.width <= _mobileWidthLimit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth > _tabletWidthLimit) {
          return screenWeb;
        }
        if (constraints.maxWidth > _mobileWidthLimit) {
          return screenTablet;
        } else {
          return screenMobile;
        }
      }),
    );
  }
}
