import 'package:flutter/material.dart';

import '../../../../../Core/components/custom_button.dart';
import '../../../../../Core/utils/responsive_size.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14),
                bottomLeft: Radius.circular(14),
              ),
              fontColor: Colors.black,
              fontSize: ResponsiveSize.height(context, 20),
              text: "19.99 €",
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {},
              backgroundColor: const Color(0xffEF8262),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
              fontColor: Colors.white,
              fontSize: ResponsiveSize.height(context, 18),
              text: "free Preview",
            ),
          ),
        ],
      ),
    );
  }
}