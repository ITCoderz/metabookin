import 'package:flutter/material.dart';
import 'package:meta_booking/utils/sizes/screen_sizes.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final double width, height;
  final Color fillColor;
  final int? maxLines;

  const SearchTextField({
    Key? key,
    this.width = 250,
    this.height = 50,
    this.hintText = "Search",
    this.fillColor = Colors.transparent,
    this.maxLines = 1,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: context.width * 1,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: const BoxDecoration(
        color: CColors.darkBackground,
      ),
      child: SizedBox(
        height: height,
        width: width,
        child: TextFormField(
          controller: textEditingController,
          textAlignVertical: TextAlignVertical.center,
          style: CustomTextStyles.rWhite716,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 15,
            ),
            hintText: hintText,
            hintStyle: CustomTextStyles.rDescriptionColor716,
            enabled: true,
            filled: true,
            fillColor: fillColor,
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: CColors.blueAccentThree,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  45,
                ),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: CColors.blueAccentThree,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  45,
                ),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: CColors.blueAccentThree,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  45,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
