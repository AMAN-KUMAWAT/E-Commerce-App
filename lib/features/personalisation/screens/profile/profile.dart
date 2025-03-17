import 'package:flutter/material.dart';
import 'package:project/common/widgets/custom_shapes/appbar/appbar.dart';
import 'package:project/common/widgets/custom_shapes/texts/section_heading.dart';
import 'package:project/common/widgets/images/circular_image.dart';
import 'package:project/features/personalisation/screens/profile/widgets/profile_menu.dart';
import 'package:project/utils/constants/image_strings.dart';
import 'package:project/utils/constants/sizes.dart';
import 'package:project/utils/helper/helper_functions.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaltSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(
                      dark: dark,
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text('Change Profile Pictures'))
                  ],
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwItems / 1.5,
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TProfileMenu(
                title: 'Name',
                value: 'Hello there! new world',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'UserName',
                value: 'Hello there! new world',
                onPressed: () {},
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TProfileMenu(
                title: 'User Id',
                value: '493826',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'E-mail',
                value: 'amanxyz@gmail.com',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Phone Number',
                value: '+91 xxxx-xxxx-xx',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Date of Birth',
                value: 'Oct-25,2001',
                onPressed: () {},
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Close Account',
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
