import 'package:flutter/material.dart';
import '../../../../../Core/utils/assets.dart';

class HorizontalBooksListViewItem extends StatelessWidget {
  const HorizontalBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      // width = 2.7 from height
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AssetsData.testImage,
            ),
          ),
        ),
      ),
    );
  }
}
