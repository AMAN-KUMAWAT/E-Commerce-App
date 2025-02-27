import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/utils/constants/colors.dart';
import 'package:project/utils/constants/text_strings.dart';

class SignupDivider extends StatelessWidget {
  const SignupDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.white : TColors.black,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          TTexts.orSignupWith.capitalize!,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              color: dark ? TColors.white : TColors.black),
        ),
        Flexible(
          child: Divider(
            color: dark ? TColors.white : TColors.black,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        )
      ],
    );
  }
}
