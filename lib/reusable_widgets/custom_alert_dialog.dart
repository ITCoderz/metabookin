import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta_booking/reusable_widgets/text_field/custom_text_field.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';

import '../utils/colors/app_colors.dart';
import '../utils/text_styles/text_styles.dart';
import 'buttons/custom_elevated_button.dart';

class CustomAlertDialog extends StatelessWidget {
  final Function()? onPressFunction;
  final String phoneNumber;
  final TextEditingController textEditingController;
  final int timeInSeconds;

  const CustomAlertDialog({
    Key? key,
    required this.textEditingController,
    required this.onPressFunction,
    required this.phoneNumber,
    required this.timeInSeconds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        scrollable: true,
        backgroundColor: CColors.greyColor,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            0,
          ),
        ),
        elevation: 0.0,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              "OTP Code",
              style: CustomTextStyles.mBlackUnderlined716,
            ),
            10.ph,
            const Text(
              "We will send you OTP code for\nconfirm you phone number",
              style: CustomTextStyles.mBlack512,
              textAlign: TextAlign.center,
            ),
            20.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  phoneNumber,
                  style: CustomTextStyles.mBlack512,
                ),
                Text(
                  "Send again ${timeInSeconds}s",
                  style: CustomTextStyles.mBlackUnderlined12,
                ),
              ],
            ),
            10.ph,
            CustomTextField(
              validatorFunction: (val) {
                return null;
              },
              textEditingController: textEditingController,
              width: context.width * 1,
              hintText: "Enter OTP Code Here",
              fillColor: CColors.greyColor,
            ),
            10.ph,
            CustomElevatedButton(
              onPressedFunction: onPressFunction,
              buttonText: "SUBMIT",
              width: context.width * 1,
              isDark: true,
            )
          ],
        ));
  }
}
