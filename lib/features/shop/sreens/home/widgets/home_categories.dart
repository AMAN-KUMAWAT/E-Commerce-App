import 'package:flutter/material.dart';
import 'package:project/common/widgets/image_text_widgets/vertical_text_widgets.dart';
import 'package:project/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticakImageText(
              image: TImages.bowling,
              title: 'Sports Categories',
              onTap: () {},
            );
          }),
    );
  }
}
