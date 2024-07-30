import 'package:flutter/material.dart';
import '../../../../../Core/utils/app_text_style.dart';

class FadingText extends StatelessWidget {
  const FadingText({
    super.key,
    required this.fadingAnimation,
  });

  final Animation<double> fadingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: fadingAnimation,
      builder: (context, _) {
        return FadeTransition(
          opacity: fadingAnimation,
          child: Text(
            "Read , Learn , Grow",
            textAlign: TextAlign.center,
            style: AppTextStyles.semiBold18(context),
          ),
        );
      },
    );
  }
}
