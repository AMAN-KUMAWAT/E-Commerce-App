import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading(
      {super.key,
      this.textColor,
      this.showActivityButton = true,
      required this.title,
      this.buttonTitle = 'View All',
      this.onPressed});
  final Color? textColor;
  final bool showActivityButton;
  final String title, buttonTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActivityButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
