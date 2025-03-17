import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project/common/widgets/custom_shapes/appbar/appbar.dart';
import 'package:project/common/widgets/icons/t_circular_icons.dart';
import 'package:project/common/widgets/layout/grid_lyout.dart';
import 'package:project/common/widgets/products/product_carts/product_cart_vertical.dart';
import 'package:project/features/shop/sreens/home/home_screen.dart';
import 'package:project/utils/constants/sizes.dart';
import 'package:project/utils/helper/helper_functions.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            dark: dark,
            icon: Iconsax.add,
            onPressed: () => Get.to(HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaltSpace),
          child: Column(
            children: [
              GridLayout(
                  itemCount: 12,
                  itemBuilder: (_, index) => TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
