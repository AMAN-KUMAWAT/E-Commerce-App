import 'package:flutter/material.dart';
import 'package:project/common/styles/spacing_styles.dart';
import 'package:project/features/authentication/screens/login/login_divider.dart';
import 'package:project/features/authentication/screens/login/login_footer.dart';
import 'package:project/features/authentication/screens/login/login_form.dart';
import 'package:project/features/authentication/screens/login/login_header.dart';
import 'package:project/utils/helper/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppHeight,
          child: Column(
            children: [
              /// logo, title , subtitle
              LoginHeader(dark: dark),

              ///Form
              LoginForm(dark: dark),

              /// Divider
              LoginDivider(dark: dark),

              ///Footer
              LoginFooter()
            ],
          ),
        ),
      ),
    );
  }
}
