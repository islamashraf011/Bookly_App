import 'package:flutter/material.dart';
import '../../../../../Core/utils/app_text_style.dart';
import '../../../../../Core/utils/responsive_size.dart';
import 'custom_search_text_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomSearchTextField(),
        SizedBox(
          height: ResponsiveSize.height(context, 16),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Search Result",
            style: AppTextStyles.semiBold18(context),
          ),
        ),
        SizedBox(
          height: ResponsiveSize.height(context, 16),
        ),
        const Expanded(
          child: SearchResultListView(),
        ),
      ],
    );
  }
}
