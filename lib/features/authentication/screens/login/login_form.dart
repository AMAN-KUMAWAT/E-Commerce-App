import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project/features/authentication/screens/password_configuration.dart/forgot_password.dart';
import 'package:project/features/authentication/screens/signup/signup.dart';
import 'package:project/navigation_menu.dart';
import 'package:project/utils/constants/sizes.dart';
import 'package:project/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            ///user name
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Iconsax.direct_right,
                  ),
                  labelText: TTexts.email),
            ),
            SizedBox(
              height: TSizes.spaceBtwInputField,
            ),

            ///password
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Iconsax.password_check,
                  ),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            SizedBox(
              height: TSizes.spaceBtwInputField,
            ),

            /// Remember me and forget pssword

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(
                      TTexts.rememberMe,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12,
                          color: dark ? Colors.white : Colors.black),
                    ),
                  ],
                ),

                ///forget password
                TextButton(
                    onPressed: () {
                      Get.to(() => ForgotPassword());
                    },
                    child: Text(TTexts.forgotPassword))
              ],
            ),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            ///SignIn button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => NavigationMenu());
                    },
                    child: Text(TTexts.signIn))),
            SizedBox(
              height: 4,
            ),

            ///create account button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      Get.to(() => SignupScreen());
                    },
                    child: Text(TTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
