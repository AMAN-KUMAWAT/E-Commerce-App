import 'package:flutter/material.dart';
import 'package:project/utils/constants/colors.dart';
import 'package:project/utils/constants/sizes.dart';
import 'package:project/utils/helper/helper_functions.dart';

class OnBoradingScreen extends StatelessWidget {
  const OnBoradingScreen(
      {super.key,
      required this.image,
      required this.subTitle,
      required this.title});
  final String title, image, subTitle;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaltSpace),
      child: Column(
        children: [
          Image(
              width: THelperFunctions.screenWidth() * 0.7,
              height: THelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image)),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: TextStyle(
                fontFamily: 'Poppins',
                color: dark ? TColors.white : TColors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
