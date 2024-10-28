import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/utils/app_text_style.dart';
import '../../../../../Core/utils/responsive_size.dart';
import 'book_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ResponsiveSize.width(context, 110),
          ),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? '',
          ),
        ),
        SizedBox(
          height: ResponsiveSize.height(context, 40),
        ),
        Text(
          bookModel.volumeInfo!.title!,
          style: AppTextStyles.regularGtFont30(context),
        ),
        SizedBox(
          height: ResponsiveSize.height(context, 4),
        ),
        Text(
          bookModel.volumeInfo!.authors![0],
          style: AppTextStyles.regularColor18(context),
        ),
        SizedBox(
          height: ResponsiveSize.height(context, 14),
        ),
        SizedBox(
          height: ResponsiveSize.height(context, 40),
        ),
        BookAction(
          bookModel: bookModel,
        )
      ],
    );
  }
}
