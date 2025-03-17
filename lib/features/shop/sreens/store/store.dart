import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project/common/widgets/custom_shapes/appbar/appbar.dart';
import 'package:project/common/widgets/custom_shapes/appbar/tab_bar.dart';
import 'package:project/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:project/common/widgets/custom_shapes/texts/section_heading.dart';
import 'package:project/common/widgets/layout/grid_lyout.dart';
import 'package:project/common/widgets/products/cart_menu_icon.dart';
import 'package:project/features/shop/sreens/store/widgets/t_brand_card.dart';
import 'package:project/utils/constants/colors.dart';
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

                          ///search box
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

                          ///brands grid
                          GridLayout(
                              mainAxisExtent: 80,
                              itemCount: 4,
                              itemBuilder: (_, index) {
                                return TBrandCard(
                                  dark: dark,
                                  showBorder: true,
                                );
                              })
                        ],
                      ),
                    ),

                    ///Tabs
                    bottom: TTabBar(tabs: [
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
                    ]))
              ];
            },

            ///body
            body: TabBarView(
              children: [
                Padding(
                  padding: EdgeInsets.all(TSizes.defaltSpace),
                  child: Column(
                    children: [
                      ///brands
                      Center(child: Text('Sports Categories'))

                      ///products
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(TSizes.defaltSpace),
                  child: Column(
                    children: [
                      ///brands
                      Center(child: Text('Furniture Categories'))

                      ///products
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(TSizes.defaltSpace),
                  child: Column(
                    children: [
                      ///brands
                      Center(child: Text('Electronics Categories'))

                      ///products
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(TSizes.defaltSpace),
                  child: Column(
                    children: [
                      ///brands
                      Center(child: Text('Clothes Categories'))

                      ///products
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(TSizes.defaltSpace),
                  child: Column(
                    children: [
                      ///brands
                      Center(child: Text('Cosmetics Categories'))

                      ///products
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
