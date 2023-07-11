import 'package:flutter/material.dart';
import 'package:meta_booking/utils/colors/app_colors.dart';

import '../utils/text_styles/text_styles.dart';

class ChipWidget extends StatelessWidget {
  final bool isSelected;
  final String interestName, avatarString;
  final Function()? onPressFunction;

  const ChipWidget({
    super.key,
    required this.isSelected,
    required this.interestName,
    required this.avatarString,
    this.onPressFunction,
  });

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      onPressed: onPressFunction,
      label: Text(
        interestName,
        style: isSelected
            ? CustomTextStyles.mWhite412
            : CustomTextStyles.mDarkBackgroundTwo412,
      ),
      avatar: Text(avatarString),
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: CColors.chipBorderColor,
        ),
      ),
      backgroundColor:
          isSelected ? CColors.darkBackgroundTwo : CColors.scaffoldBackground,
    );
  }
}
