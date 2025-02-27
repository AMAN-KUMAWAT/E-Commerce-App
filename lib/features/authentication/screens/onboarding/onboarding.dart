import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:project/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:project/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:project/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:project/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:project/utils/constants/image_strings.dart';
import 'package:project/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// here this put method is used to create a new instance of the
    /// OnBoardingControllre it works as same as new keyword but as we,
    ///  working with get_X it is important
    /// now no need to create new instance again and again this one can b eused in another class
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal scrollbar pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            scrollBehavior: ScrollBehavior(),
            scrollDirection: Axis.horizontal,
            children: [
              OnBoradingScreen(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoradingScreen(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoradingScreen(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// skip button
          OnBoardingSkip(),

          ///dot navigation smoothPageIndicator
          OnBoardingDotNavigation(),

          ///circular button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
