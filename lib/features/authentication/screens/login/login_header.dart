import 'package:flutter/material.dart';
import 'package:project/utils/constants/sizes.dart';
import 'package:project/utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: TSizes.sm,
        ),
        Text(
          TTexts.loginSubTitle,
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
              color: dark ? Colors.white : Colors.black),
        ),
      ],
    );
  }
}
