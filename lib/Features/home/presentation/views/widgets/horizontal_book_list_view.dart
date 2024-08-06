import 'package:bookly_app/Features/home/presentation/manager/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/components/custom_circular_Indicator.dart';
import '../../../../../Core/components/custom_error_message.dart';
import '../../../../../Core/utils/responsive_size.dart';
import 'custom_book_image.dart';

class HorizontalBooksListView extends StatelessWidget {
  const HorizontalBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFeaturedBooksCubit, FetchFeaturedBooksState>(
      builder: (context, state) {
        if (state is FetchFeaturedBooksSuccessState) {
          return SizedBox(
            height: ResponsiveSize.height(context, 210),
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
        } else if (state is FetchFeaturedBooksFailureState) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
