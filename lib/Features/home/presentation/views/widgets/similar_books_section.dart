import 'package:flutter/material.dart';
import '../../../../../Core/utils/app_text_style.dart';
import '../../../../../Core/utils/responsive_size.dart';
import 'similar_books_section_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "You can also like",
            style: AppTextStyles.medium16(context),
          ),
        ),
        SizedBox(
          height: ResponsiveSize.height(context, 16),
        ),
        const SimilarBooksSectionListView(),
        SizedBox(
          height: ResponsiveSize.height(context, 25),
        ),
      ],
    );
  }
}
