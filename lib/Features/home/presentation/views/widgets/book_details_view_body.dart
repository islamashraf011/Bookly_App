import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/utils/responsive_size.dart';
import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          // false :  Solve if the screen size not cover all widget
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              BookDetailsSection(
                bookModel: bookModel,
              ),
              SizedBox(
                height: ResponsiveSize.height(context, 50),
              ),
              const SimilarBooksSection()
            ],
          ),
        )
      ],
    );
  }
}
