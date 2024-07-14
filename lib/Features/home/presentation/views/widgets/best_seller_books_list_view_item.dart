import 'package:flutter/material.dart';
import '../../../../../Core/utils/assets.dart';

class BestSellerBooksListViewItem extends StatelessWidget {
  const BestSellerBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              // width = 2.7 from height
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsData.testImage,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
