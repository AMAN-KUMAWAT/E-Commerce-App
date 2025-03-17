import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project/common/widgets/images/circular_image.dart';
import 'package:project/utils/constants/colors.dart';
import 'package:project/utils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(dark: dark, image: TImages.user),
      title: Text(
        'Aman Kumawat',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        'amanxyz@gmail.com',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.edit,
            color: TColors.white,
          )),
    );
  }
}
