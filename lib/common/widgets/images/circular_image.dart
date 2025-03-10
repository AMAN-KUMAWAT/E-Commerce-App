import 'package:flutter/material.dart';
import 'package:project/utils/constants/colors.dart';
import 'package:project/utils/constants/sizes.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    required this.dark,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetwokrImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
  });

  final bool dark;
  final BoxFit? fit;
  final String image;
  final bool isNetwokrImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: dark ? TColors.black : TColors.white,
          borderRadius: BorderRadius.circular(100)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image(
          fit: fit,
          image: isNetwokrImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          color: overlayColor,
        ),
      ),
    );
  }
}
