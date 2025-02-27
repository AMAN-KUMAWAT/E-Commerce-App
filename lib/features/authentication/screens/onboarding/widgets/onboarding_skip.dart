import 'package:flutter/material.dart';
import 'package:project/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:project/utils/constants/sizes.dart';
import 'package:project/utils/device/device_utility.dart';

/// This class represents a widget for skipping onboarding screens in a Dart application.
class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaltSpace,
      child: TextButton(
          onPressed: () => OnboardingController.instance.skipPage(),
          child: Text(
            'Skip..',
            style: TextStyle(fontSize: 15),
          )),
    );
  }
}
