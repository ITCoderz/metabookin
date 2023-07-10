import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function()? onPressedFunction;
  final String buttonText;
  final double height, width;
  final bool isDark, isLight, isBlue, isRed, isBorderStadium;

  const CustomElevatedButton({
    super.key,
    required this.onPressedFunction,
    required this.buttonText,
    required this.width,
    this.height = 50,
    this.isDark = false,
    this.isLight = false,
    this.isBlue = false,
    this.isRed = false,
    this.isBorderStadium = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedFunction,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          width,
          height,
        ),
        backgroundColor: isDark
            ? CColors.darkBackground
            : isLight
                ? CColors.greyColor
                : isBlue
                    ? CColors.blueAccent
                    : CColors.redAccentColor,
        shape: isBorderStadium
            ? const StadiumBorder()
            : RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
      ),
      child: FittedBox(
        child: Text(
          buttonText,
          style: isLight
              ? CustomTextStyles.rDarkTwo514
              : isBorderStadium
                  ? CustomTextStyles.mWhite408
                  : CustomTextStyles.rWhite614,
        ),
      ),
    );
  }
}
