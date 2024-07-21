import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../Core/utils/app_text_style.dart';
import '../../../../../Core/utils/responsive_size.dart';
import '../../../../../constants.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(kRatingColor),
        ),
        SizedBox(
          width: ResponsiveSize.width(context, 10),
        ),
        Text(
          "4.8",
          style: AppTextStyles.medium16(context),
        ),
        SizedBox(
          width: ResponsiveSize.width(context, 7),
        ),
        Text(
          "(2390)",
          style: AppTextStyles.regularColor14(context),
        ),
      ],
    );
  }
}
