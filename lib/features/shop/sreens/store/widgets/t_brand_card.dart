import 'package:flutter/material.dart';
import 'package:project/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:project/common/widgets/images/circular_image.dart';
import 'package:project/common/widgets/products/product_carts/brand_title_with_verified_icon.dart';
import 'package:project/utils/constants/enums.dart';
import 'package:project/utils/constants/image_strings.dart';
import 'package:project/utils/constants/sizes.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard(
      {super.key, required this.dark, this.onTap, required this.showBorder});

  final bool dark;
  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircularContainer(
        showBorder: showBorder,
        padding: EdgeInsets.all(TSizes.sm),
        backgroundColor: Colors.transparent,
        radius: 10,
        width: 60,
        height: 60,
        child: Row(
          children: [
            ///icon- brnd icon or aything defining item
            Flexible(
              child: TCircularImage(
                dark: dark,
                image: TImages.jacket,
              ),
            ),
            SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),

            ///text
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TBrandTitleWithVerifiedIcon(
                    title: 'Zara',
                    brandTextSize: TextSizes.large,
                  ),
                  Flexible(
                    child: Text(
                      '6 Products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
