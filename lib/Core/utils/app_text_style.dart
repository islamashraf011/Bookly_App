import 'package:bookly_app/Core/utils/responsive_size.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class AppTextStyles {
  static semiBold18(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveSize.height(context, 18),
      fontWeight: FontWeight.w600,
    );
  }

  static regularGtFont20(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveSize.height(context, 20),
      fontWeight: FontWeight.normal,
      fontFamily: kGtSectraFont,
    );
  }

  static bold20(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveSize.height(context, 20),
      fontWeight: FontWeight.bold,
    );
  }

  static regular14(BuildContext context) {
    TextStyle(
      fontSize: ResponsiveSize.height(context, 14),
      fontWeight: FontWeight.normal,
    );
  }

  static medium16(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveSize.height(context, 16),
      fontWeight: FontWeight.w500,
    );
  }

  static regularGtFont30(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveSize.height(context, 30),
      fontWeight: FontWeight.normal,
      fontFamily: kGtSectraFont,
    );
  }

  static const fontColor14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Color(kNumRate),
  );
}
