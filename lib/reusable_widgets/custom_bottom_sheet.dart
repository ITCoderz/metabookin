import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta_booking/reusable_widgets/buttons/custom_elevated_button.dart';
import 'package:meta_booking/utils/alignment/widget_alignment.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';

import '../utils/colors/app_colors.dart';
import '../utils/text_styles/text_styles.dart';

class BottomDetailSheet extends StatelessWidget {
  const BottomDetailSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 1,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
          bottomLeft: Radius.zero,
          bottomRight: Radius.zero,
        ),
        color: CColors.scaffoldBackground,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Filter",
              style: CustomTextStyles.mDarkBackgroundTwo712,
            ).alignWidget(
              alignment: Alignment.center,
            ),
            30.ph,
            const Text(
              "Interest",
              style: CustomTextStyles.mBlackUnderlined612,
            ),
            20.ph,
            // Wrap(
            //   spacing: 10,
            //   runSpacing: 10,
            //   children: [
            //     for (int i = 0;
            //         i < ConstantLists.interestsList.length - 11;
            //         i++) ...[
            //       ChipWidget(
            //         isSelected: false,
            //         interestName:
            //             ConstantLists.interestsList[i].interestName,
            //         avatarString:
            //             ConstantLists.interestsList[i].avatarString,
            //       )
            //     ]
            //   ],
            // ),
            const Text(
              "Hair Salon",
              style: CustomTextStyles.mBlackUnderlined612,
            ),
            20.ph,
            // Wrap(
            //   spacing: 10,
            //   runSpacing: 10,
            //   children: [
            //     for (int i = 0;
            //         i < ConstantLists.interestsList.length - 11;
            //         i++) ...[
            //       ChipWidget(
            //         isSelected: false,
            //         interestName:
            //             ConstantLists.interestsList[i].interestName,
            //         avatarString:
            //             ConstantLists.interestsList[i].avatarString,
            //       )
            //     ]
            //   ],
            // ),
            100.ph,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    onPressedFunction: () {
                      Get.back();
                    },
                    buttonText: "CLEAR",
                    width: 200,
                    isLight: true,
                  ),
                ),
                20.pw,
                Expanded(
                  child: CustomElevatedButton(
                    onPressedFunction: () {
                      Get.back();
                    },
                    buttonText: "Filter",
                    width: 200,
                    isLight: true,
                  ),
                ),
              ],
            ),
            20.ph,
          ],
        ),
      ),
    );
  }
}
