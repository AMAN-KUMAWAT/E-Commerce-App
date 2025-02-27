import 'package:flutter/material.dart';
import 'package:project/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:project/utils/constants/colors.dart';
import 'package:project/utils/constants/sizes.dart';
import 'package:project/utils/device/device_utility.dart';
import 'package:project/utils/helper/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

/// This class represents a dot navigation widget for onboarding screens.
class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaltSpace,

      /// The `child: SmoothPageIndicator(` line is setting the child widget of the `OnBoardingDotNavigation` widget to be a `SmoothPageIndicator` widget. This widget is used to display a customizable dot indicator for indicating the current page in a set of pages, typically used in onboarding screens or image carousels.
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light : TColors.dark, dotHeight: 6),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    );
  }
}
