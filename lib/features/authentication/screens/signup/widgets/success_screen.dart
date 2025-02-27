import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project/common/styles/spacing_styles.dart';
import 'package:project/features/authentication/screens/login/login.dart';
import 'package:project/utils/constants/sizes.dart';
import 'package:project/utils/constants/text_strings.dart';
import 'package:project/utils/helper/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
              padding: TSpacingStyle.paddingWithAppHeight * 2,
              child: Column(
                children: [
                  ///image
                  Center(
                    child: Image(
                      image: AssetImage(
                        image,
                      ),
                      width: THelperFunctions.screenWidth() * 0.6,
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  ///title and Subtitle
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Text(
                    'aman@gmail.com',
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  ///button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => LoginScreen());
                        },
                        child: Text(TTexts.tContinue)),
                  ),
                ],
              ))),
    );
  }
}
