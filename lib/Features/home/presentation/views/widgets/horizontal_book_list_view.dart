import 'package:flutter/material.dart';
import '../../../../../Core/utils/responsive_size.dart';
import 'horizontal_book_list_view_item.dart';

class HorizontalBooksListView extends StatelessWidget {
  const HorizontalBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ResponsiveSize.height(context, 210),
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 24),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 15),
            child: HorizontalBooksListViewItem(),
          );
        },
      ),
    );
  }
}
