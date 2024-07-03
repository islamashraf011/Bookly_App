import 'package:bookly_app/Core/utils/app_text_style.dart';
import 'package:bookly_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
        ),
        Text(
          "Read , Learn , Grow",
          textAlign: TextAlign.center,
          style: AppTextStyles.semiBold18(context),
        )
      ],
    );
  }
}
