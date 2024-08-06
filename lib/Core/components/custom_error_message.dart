import 'package:flutter/material.dart';
import '../utils/app_text_style.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({
    super.key,
    required this.errMessage,
  });
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: AppTextStyles.regular14(context),
    );
  }
}
