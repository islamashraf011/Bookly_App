import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/app_text_style.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/utils/responsive_size.dart';
import 'custom_book_image.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(
            AppRouter.bookDetailsView,
            extra: bookModel,
          );
        },
        child: SizedBox(
          height: ResponsiveSize.height(context, 125),
          child: Row(
            children: [
              CustomBookImage(
                //this line mean if the Url not Working Use Empty String it shows a error Icon
                imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? '',
              ),
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
                        bookModel.volumeInfo!.title!,
                        style: AppTextStyles.regularGtFont20(context),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: ResponsiveSize.height(context, 3),
                    ),
                    Text(
                      bookModel.volumeInfo?.authors != null
                          ? bookModel.volumeInfo!.authors![0]
                          : 'Author not available',
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
                          "Free",
                          style: AppTextStyles.regularColor14(context),
                        ),
                        // BooksRating(
                        //   rating: bookModel.volumeInfo!.contentVersion!,
                        //   rateCount: bookModel
                        //       .volumeInfo!.contentVersion!.characters.last,
                        // ),
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
