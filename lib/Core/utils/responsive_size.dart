import 'package:flutter/material.dart';

class ResponsiveSize {
  static double height(BuildContext context, double height) {
    // screen Height = 867.5
    double screenHeight = MediaQuery.of(context).size.height;

    double responsiveHeight =
        screenHeight / height; // Adjust the base width as needed
    return responsiveHeight;
  }

  static double width(BuildContext context, double width) {
    // Screen Width = 411.5
    double screenWidth = MediaQuery.of(context).size.width;

    double responsiveWidth =
        screenWidth / width; // Adjust the base width as needed
    return responsiveWidth;
  }
}
