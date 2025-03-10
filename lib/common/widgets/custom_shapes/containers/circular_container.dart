import 'package:flutter/material.dart';
import 'package:project/utils/constants/colors.dart';
import 'package:project/utils/helper/helper_functions.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer(
      {super.key,
      this.width = 400,
      this.height = 400,
      this.radius = 400,
      this.padding,
      this.margin,
      this.child,
      this.backgroundColor = TColors.white,
      this.showBorder = false});
  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? padding;
  final Widget? child;
  final EdgeInsets? margin;
  final Color backgroundColor;
  final bool? showBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,
          border: showBorder!
              ? Border.all(
                  color: THelperFunctions.isDarkMode(context)
                      ? TColors.white
                      : TColors.black)
              : null),
      child: child,
    );
  }
}
