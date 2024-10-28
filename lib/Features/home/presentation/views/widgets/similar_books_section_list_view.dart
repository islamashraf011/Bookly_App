import 'package:bookly_app/Core/components/custom_circular_indicator.dart';
import 'package:bookly_app/Core/components/custom_error_message.dart';
import 'package:bookly_app/Features/home/presentation/manager/fetch_similar_books_cubit/fetch_similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/app_router.dart';
import '../../../../../Core/utils/responsive_size.dart';
import 'custom_book_image.dart';

class SimilarBooksSectionListView extends StatelessWidget {
  const SimilarBooksSectionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSimilarBooksCubit, FetchSimilarBooksState>(
      builder: (context, state) {
        if (state is FetchSimilarBooksSuccess) {
          return SizedBox(
            height: ResponsiveSize.height(context, 100),
            child: ListView.builder(
              itemCount: state.books.length,
              padding: const EdgeInsets.only(left: 24),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.bookDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: CustomBookImage(
                      imageUrl: state
                              .books[index].volumeInfo!.imageLinks?.thumbnail ??
                          '',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FetchSimilarBooksFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
