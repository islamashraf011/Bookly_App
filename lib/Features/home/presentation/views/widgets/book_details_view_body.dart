import 'package:flutter/material.dart';
import '../../../../../Core/utils/responsive_size.dart';
import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        const BookDetailsSection(),
        SizedBox(
          height: ResponsiveSize.height(context, 50),
        ),
        const SimilarBooksSection()
      ],
    );
  }
}
