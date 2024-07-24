import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            height: ResponsiveSize.height(context, 22),
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.searchView);
            },
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: ResponsiveSize.height(context, 22),
            ),
          ),
        ],
      ),
    );
  }
}
