import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project/utils/constants/colors.dart';
import 'package:project/utils/helper/helper_functions.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({super.key, required this.onPressed, this.iconColor});
  final Color? iconColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                  child: Text(
                '20',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: dark ? TColors.white : TColors.black),
              ))),
        )
      ],
    );
  }
}
