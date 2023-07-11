import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meta_booking/reusable_widgets/buttons/custom_elevated_button.dart';
import 'package:meta_booking/utils/text_styles/text_styles.dart';

import '../../../../generated/assets.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../sign_in/view/sign_in_screen.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: CColors.blackColor,
        alignment: Alignment.center,
        child: SvgPicture.asset(
          Assets.welcomeScreenImageWelcomeScreenImages,
        ),
      ),
    );
  }
}

class DescriptionComponent extends StatelessWidget {
  const DescriptionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: CColors.whiteColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Welcome the Future",
              textAlign: TextAlign.center,
              style: CustomTextStyles.mBlack716,
            ),
            const Text(
              "Add staff members, expand your services, offer products. Keep dreaming",
              textAlign: TextAlign.center,
              style: CustomTextStyles.mBlack416,
            ),
            const Text(
              "MetaBooking grows with the needs of your business so nothing can you down.",
              textAlign: TextAlign.center,
              style: CustomTextStyles.mBlack416,
            ),
            const Text(
              "🎉",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            CustomElevatedButton(
              onPressedFunction: () {
                Get.to(
                  () => const SignInScreen(),
                  transition: Transition.fadeIn,
                );
              },
              buttonText: "Get Started",
              width: context.width * 1,
              isDark: true,
            ),
          ],
        ),
      ),
    );
  }
}
