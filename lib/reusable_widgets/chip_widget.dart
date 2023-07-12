import 'package:flutter/material.dart';
import 'package:meta_booking/utils/colors/app_colors.dart';

import '../utils/text_styles/text_styles.dart';

class ChipWidget extends StatelessWidget {
  final bool isSelected;
  final String filterHeaderName;
  final Function()? onPressFunction;

  const ChipWidget({
    super.key,
    required this.isSelected,
    required this.filterHeaderName,
    this.onPressFunction,
  });

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      onPressed: onPressFunction,
      label: Text(
        filterHeaderName,
        style: isSelected
            ? CustomTextStyles.mWhite412
            : CustomTextStyles.mDarkBackgroundTwo412,
      ),
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: const BorderSide(
          color: CColors.chipBorderColor,
        ),
      ),
      backgroundColor:
          isSelected ? CColors.darkBackgroundTwo : CColors.scaffoldBackground,
    );
  }
}
