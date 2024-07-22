import 'package:flutter/material.dart';

import '../../../../../Core/utils/responsive_size.dart';
import 'custom_book_image.dart';

class SimilarBooksSectionListView extends StatelessWidget {
  const SimilarBooksSectionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ResponsiveSize.height(context, 100),
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 24),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 15),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
