import 'package:flutter/material.dart';
import 'package:meta_booking/utils/text_styles/text_styles.dart';

import '../utils/colors/app_colors.dart';

class OptionContainer extends StatelessWidget {
  final String optionTitle;
  final Function()? onTapFunction;
  final bool isSelected;

  const OptionContainer({
    super.key,
    required this.optionTitle,
    required this.onTapFunction,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        5,
      ),
      onTap: onTapFunction,
      child: Container(
        height: 50,
        width: 170,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          border: Border.all(
            color: isSelected ? CColors.greyColor : CColors.blackColor,
          ),
          color: isSelected ? CColors.greyColor : Colors.transparent,
        ),
        child: Text(
          optionTitle,
          style: CustomTextStyles.mBlack412,
        ),
      ),
    );
  }
}
