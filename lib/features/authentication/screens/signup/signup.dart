import 'package:flutter/material.dart';
import 'package:project/features/authentication/screens/login/login_footer.dart';
import 'package:project/features/authentication/screens/signup/widgets/signup_divider.dart';
import 'package:project/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:project/utils/constants/sizes.dart';
import 'package:project/utils/constants/text_strings.dart';
import 'package:project/utils/helper/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaltSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(
                TTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///Form
              SignupForm(dark: dark),

              ///divider
              SignupDivider(dark: dark),

              ///social signups
              LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
