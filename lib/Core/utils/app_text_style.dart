import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class AppTextStyles {
  static TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.height * 0.0225,
      fontWeight: FontWeight.w300,
    );
  }
}
