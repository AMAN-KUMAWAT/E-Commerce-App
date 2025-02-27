import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:project/utils/constants/colors.dart';
import 'package:project/utils/constants/sizes.dart';
import 'package:project/utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            SizedBox(
              width: TSizes.spaceBtwInputField,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                    labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            )
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwInputField,
        ),

        ///username
        TextFormField(
          decoration: InputDecoration(
              labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        SizedBox(
          height: TSizes.spaceBtwInputField,
        ),

        ///email
        TextFormField(
          decoration: InputDecoration(
              labelText: TTexts.email, prefixIcon: Icon(Iconsax.call)),
        ),
        SizedBox(
          height: TSizes.spaceBtwInputField,
        ),

        ///phone number
        TextFormField(
          decoration: InputDecoration(
              labelText: TTexts.phoneNumber, prefixIcon: Icon(Iconsax.call)),
        ),
        SizedBox(
          height: TSizes.spaceBtwInputField,
        ),

        ///password
        TextFormField(
          decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.call),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        SizedBox(
          height: TSizes.spaceBtwInputField,
        ),

        ///terms and conditions
        Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {})),
            Text.rich(TextSpan(children: [
              TextSpan(
                  // ignore: unnecessary_string_interpolations
                  text: '${TTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${TTexts.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary)),
              TextSpan(
                  text: 'and', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: ' ${TTexts.termsOfUSe}',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary)),
            ]))
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        ///signup button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {
                Get.to(() => VerifyEmailScreen());
              },
              child: Text(TTexts.createAccount)),
        )
      ],
    ));
  }
}
