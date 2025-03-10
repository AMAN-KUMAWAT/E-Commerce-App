import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:project/common/widgets/images/_rounded_image.dart';
import 'package:project/features/shop/controllers/home_controller.dart';
import 'package:project/utils/constants/colors.dart';
import 'package:project/utils/constants/sizes.dart';

class HomePromoSlider extends StatelessWidget {
  const HomePromoSlider({super.key, required this.banners});
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => TRoundedImage(imageUrl: url)).toList(),
          options: CarouselOptions(
              onPageChanged: (index, _) {
                controller.updatePageIndicator(index);
              },
              viewportFraction: 1),
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Obx(
          () => Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  CircularContainer(
                    width: 15,
                    height: 4,
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? TColors.primary
                        : TColors.grey,
                    margin: EdgeInsets.only(right: 10),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
