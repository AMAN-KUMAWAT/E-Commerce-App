import 'package:flutter/material.dart';
import 'package:project/utils/constants/colors.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: TColors.darkGrey.withAlpha((0.1 * 255).toInt()),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );

  static final horicalProductShadow = BoxShadow(
    color: TColors.darkGrey.withAlpha((0.1 * 255).toInt()),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
}
