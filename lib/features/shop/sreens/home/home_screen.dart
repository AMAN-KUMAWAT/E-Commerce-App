import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:project/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:project/common/widgets/custom_shapes/texts/section_heading.dart';
import 'package:project/common/widgets/layout/grid_lyout.dart';
import 'package:project/common/widgets/products/product_carts/product_cart_vertical.dart';
import 'package:project/features/shop/sreens/home/widgets/home_appbar.dart';
import 'package:project/features/shop/sreens/home/widgets/home_categories.dart';
import 'package:project/features/shop/sreens/home/widgets/home_promo_slider.dart';
import 'package:project/utils/constants/colors.dart';
import 'package:project/utils/constants/image_strings.dart';
import 'package:project/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            HomeContainerHeader(
                child: Column(
              children: [
                /// appbar
                THomeAppBAr(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// search bar
                SearchContainer(
                  text: 'Search in Store',
                  icon: Iconsax.search_normal,
                  onTap: () {},
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// heading
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaltSpace),
                  child: Column(
                    children: [
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: TColors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///categories
                THomeCategories()
              ],
            )),

            ///body withwhite sheet
            Padding(
              padding: const EdgeInsets.all(TSizes.defaltSpace),
              child: Column(
                children: [
                  HomePromoSlider(
                    banners: [
                      TImages.sale,
                      TImages.collection,
                      TImages.sneakers
                    ],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  ///Heading--> {Popular Items}
                  TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  ///popular products
                  GridLayout(
                    itemCount: 6,
                    itemBuilder: (_, index) => TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
