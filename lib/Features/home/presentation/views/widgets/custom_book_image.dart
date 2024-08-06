import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      // width = 2.7 from height
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image:  DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageUrl)
          ),
        ),
      ),
    );
  }
}
