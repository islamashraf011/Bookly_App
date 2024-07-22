import 'package:flutter/material.dart';

import '../utils/responsive_size.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.borderRadius,
    required this.text,
    required this.fontSize,
    required this.fontColor,
  });
  final Function() onPressed;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final String text;
  final double fontSize;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ResponsiveSize.height(context, 50),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
