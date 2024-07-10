import 'package:bookly_app/Core/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class AppTextStyles {
  static TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveSize.height(context, 18),
      fontWeight: FontWeight.w300,
    );
  }
}
