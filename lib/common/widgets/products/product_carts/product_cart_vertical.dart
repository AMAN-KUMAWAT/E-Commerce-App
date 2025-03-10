import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project/common/pricing/product_price_text.dart';
import 'package:project/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:project/common/widgets/custom_shapes/texts/product_title_text.dart';
import 'package:project/common/widgets/icons/t_circular_icons.dart';
import 'package:project/common/widgets/images/_rounded_image.dart';
import 'package:project/common/widgets/products/product_carts/brand_title_with_verified_icon.dart';
import 'package:project/common/widgets/products/product_carts/shadow_style.dart';
import 'package:project/utils/constants/colors.dart';
import 'package:project/utils/constants/image_strings.dart';
import 'package:project/utils/constants/sizes.dart';
import 'package:project/utils/helper/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkerGrey : TColors.white),
        child: Column(
          children: [
            ///thumbnail, wishlist button, discount tag
            CircularContainer(
              height: 180,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.darkGrey : TColors.light,
              child: Stack(
                children: [
                  ///thumbnailimage
                  TRoundedImage(
                    imageUrl: TImages.shoes,
                    applyImageRadius: true,
                  ),

                  ///sale tag
                  Positioned(
                    top: 6,
                    left: 3,
                    child: CircularContainer(
                      height: 25,
                      width: 40,
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withAlpha(
                        (0.8 * 255).toInt(),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  ///favourite icon button
                  Positioned(
                    top: 2,
                    right: 2,
                    child: TCircularIcon(
                      dark: dark,
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),

            ///details
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleTxt(
                    title: 'Men\'s Classic Casual Shoes',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  TBrandTitleWithVerifiedIcon(
                    title: 'Bata',
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TProductPriceText(
                    price: '799',
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              TSizes.cardRadiusMd,
                            ),
                            bottomRight:
                                Radius.circular(TSizes.productImageRadius))),
                    child: SizedBox(
                      height: TSizes.iconLg * 1.2,
                      width: TSizes.iconLg * 1.2,
                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          color: TColors.white,
                        ),
                      ),
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
