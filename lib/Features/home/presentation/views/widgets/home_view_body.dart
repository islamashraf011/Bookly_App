import 'package:bookly_app/Core/utils/app_text_style.dart';
import 'package:bookly_app/Core/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'best_seller_books_list_view.dart';
import 'custom_app_bar.dart';
import 'horizontal_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const HorizontalBooksListView(),
              SizedBox(
                height: ResponsiveSize.height(context, 50),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "Best Seller",
                  style: AppTextStyles.bold20(context),
                ),
              ),
              SizedBox(
                height: ResponsiveSize.height(context, 20),
              ),
            ],
            // ),
          ),
        ),
        const SliverFillRemaining(
          child: BestSellerBooksListView(),
        )
      ],
    );
  }
}
