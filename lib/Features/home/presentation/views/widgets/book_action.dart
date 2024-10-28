import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../Core/components/custom_button.dart';
import '../../../../../Core/utils/responsive_size.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
  final BookModel bookModel;
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
              text: "Free",
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                Uri uri = Uri.parse(bookModel.accessInfo!.webReaderLink!);
                await launchUrl(uri);
              },
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
