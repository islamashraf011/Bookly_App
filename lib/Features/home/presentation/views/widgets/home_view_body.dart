import 'package:bookly_app/Core/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveSize.width(context, 15),
        vertical: ResponsiveSize.height(context, 22),
      ),
      child: const Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
