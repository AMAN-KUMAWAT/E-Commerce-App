import 'package:flutter/material.dart';
import 'package:project/common/widgets/custom_shapes/appbar/appbar.dart';
import 'package:project/common/widgets/products/cart_menu_icon.dart';
import 'package:project/utils/constants/colors.dart';
import 'package:project/utils/constants/text_strings.dart';

class THomeAppBAr extends StatelessWidget {
  const THomeAppBAr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.white),
          )
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: () {},
          iconColor: TColors.white,
        )
      ],
    );
  }
}
