import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/utils/responsive_size.dart';
import 'books_rating.dart';
import 'custom_book_image.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.bookDetailsView);
        },
        child: SizedBox(
          height: ResponsiveSize.height(context, 125),
          child: Row(
            children: [
              const CustomBookImage(),
              SizedBox(
                width: ResponsiveSize.width(context, 30),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: ResponsiveSize.width(context, 200),
                      child: Text(
                        "Harry Potter and the Goblet of Fire",
                        style: AppTextStyles.regularGtFont20(context),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: ResponsiveSize.height(context, 3),
                    ),
                    Text(
                      "J.K. Rowling",
                      style: AppTextStyles.regular14(context),
                    ),
                    SizedBox(
                      height: ResponsiveSize.height(context, 3),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "19.99 €",
                          style: AppTextStyles.bold20(context),
                        ),
                        const BooksRating(),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
