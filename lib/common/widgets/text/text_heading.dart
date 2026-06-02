import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TextHeading extends StatelessWidget {
  const TextHeading({
    super.key,
    this.onTap,
    this.textColor = AppColors.white,
    required this.showActionButton,
    required this.text,
    this.buttonTitle = 'View all',
  });

  final VoidCallback? onTap;
  final Color? textColor;
  final bool showActionButton;
  final String text, buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.apply(color: textColor),
        ),
        if (showActionButton)
          TextButton(onPressed: onTap, child: Text(buttonTitle)),
      ],
    );
  }
}
