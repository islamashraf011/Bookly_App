import 'package:flutter/material.dart';
import '../../../../../Core/utils/app_text_style.dart';
import '../../../../../Core/utils/responsive_size.dart';
import 'book_action.dart';
import 'books_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ResponsiveSize.width(context, 110),
          ),
          child: const CustomBookImage(),
        ),
        SizedBox(
          height: ResponsiveSize.height(context, 40),
        ),
        Text(
          "The Jungle Book",
          style: AppTextStyles.regularGtFont30(context),
        ),
        SizedBox(
          height: ResponsiveSize.height(context, 4),
        ),
        Text(
          "Rudyard Kipling",
          style: AppTextStyles.regularColor18(context),
        ),
        SizedBox(
          height: ResponsiveSize.height(context, 14),
        ),
        const BooksRating(),
        SizedBox(
          height: ResponsiveSize.height(context, 40),
        ),
        const BookAction()
      ],
    );
  }
}
