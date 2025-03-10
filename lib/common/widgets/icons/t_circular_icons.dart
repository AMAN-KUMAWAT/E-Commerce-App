import 'package:flutter/material.dart';
import 'package:project/utils/constants/colors.dart';
import 'package:project/utils/constants/sizes.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon(
      {super.key,
      required this.dark,
      this.width,
      this.height,
      required this.icon,
      this.color,
      this.backgroundColor,
      this.onPressed,
      this.size = TSizes.lg});

  final bool dark;
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: backgroundColor != null
                ? backgroundColor!
                : dark
                    ? TColors.black.withAlpha(
                        (0.8 * 255).toInt(),
                      )
                    : TColors.white.withAlpha((0.9 * 255).toInt()),
            borderRadius: BorderRadius.circular(100)),
        child: Center(
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: color,
                size: size,
              )),
        ));
  }
}
