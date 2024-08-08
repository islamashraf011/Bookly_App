import 'package:bookly_app/Core/components/custom_circular_indicator.dart';
import 'package:bookly_app/Core/components/custom_error_message.dart';
import 'package:bookly_app/Features/home/presentation/manager/fetch_newest_books_cubit/fetch_newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'book_list_view_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewestBooksCubit, FetchNewestBooksState>(
      builder: (context, state) {
        if (state is FetchNewestBooksSuccessState) {
          return ListView.builder(
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return BookListViewItem(
                bookModel: state.books[index],
              );
            },
          );
        } else if (state is FetchNewestBooksFailureState) {
          return CustomErrorMessage(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
