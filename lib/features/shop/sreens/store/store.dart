import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project/common/widgets/custom_shapes/appbar/appbar.dart';
import 'package:project/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:project/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:project/common/widgets/custom_shapes/texts/section_heading.dart';
import 'package:project/common/widgets/images/circular_image.dart';
import 'package:project/common/widgets/layout/grid_lyout.dart';
import 'package:project/common/widgets/products/cart_menu_icon.dart';
import 'package:project/common/widgets/products/product_carts/brand_title_with_verified_icon.dart';
import 'package:project/utils/constants/colors.dart';
import 'package:project/utils/constants/enums.dart';
import 'package:project/utils/constants/image_strings.dart';
import 'package:project/utils/constants/sizes.dart';
import 'package:project/utils/helper/helper_functions.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CartCounterIcon(
              onPressed: () {},
              iconColor: dark ? TColors.white : TColors.black,
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: dark ? TColors.black : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.all(TSizes.defaltSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        SearchContainer(
                          text: '',
                          showBorder: true,
                          showBackground: false,
                          icon: Iconsax.search_favorite,
                          padding: EdgeInsets.zero,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),

                        ///featured brands section
                        TSectionHeading(
                          title: 'Featured Brands',
                          showActionButton: true,
                          onPressed: () {},
                        ),

                        ///brands
                        GridLayout(
                            mainAxisExtent: 80,
                            itemCount: 4,
                            itemBuilder: (_, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: CircularContainer(
                                  showBorder: true,
                                  padding: EdgeInsets.all(TSizes.sm),
                                  backgroundColor: Colors.transparent,
                                  radius: 10,
                                  width: 60,
                                  height: 60,
                                  child: Row(
                                    children: [
                                      ///icon
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TBrandTitleWithVerifiedIcon(
                                              title: 'Reymonds',
                                              brandTextSize: TextSizes.large,
                                            ),
                                            Text(
                                              '256 Products',
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ),

                  ///Tabs
                  bottom: TabBar(
                      isScrollable: true,
                      indicatorColor: TColors.primary,
                      labelColor: THelperFunctions.isDarkMode(context)
                          ? TColors.white
                          : TColors.primary,
                      tabs: [
                        Tab(
                          child: Text('Sports'),
                        ),
                        Tab(
                          child: Text('Furniture'),
                        ),
                        Tab(
                          child: Text('Electronics'),
                        ),
                        Tab(
                          child: Text('Clothes'),
                        ),
                        Tab(
                          child: Text('Cosmetics'),
                        )
                      ]),
                )
              ];
            },

            ///body
            body: Container()),
      ),
    );
  }
}
