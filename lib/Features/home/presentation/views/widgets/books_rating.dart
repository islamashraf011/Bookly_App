import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../Core/utils/app_text_style.dart';
import '../../../../../Core/utils/responsive_size.dart';
import '../../../../../constants.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({super.key, required this.rating, required this.rateCount});
  final String rating;
  final String rateCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(kRatingColor),
        ),
        SizedBox(
          width: ResponsiveSize.width(context, 10),
        ),
        Text(
          rating,
          style: AppTextStyles.medium16(context),
        ),
        SizedBox(
          width: ResponsiveSize.width(context, 7),
        ),
        Text(
          "($rateCount)",
          style: AppTextStyles.regularColor14(context),
        ),
      ],
    );
  }
}
