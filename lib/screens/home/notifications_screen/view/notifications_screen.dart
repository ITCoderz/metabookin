import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meta_booking/generated/assets.dart';
import 'package:meta_booking/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:meta_booking/screens/home/main_screen/view/main_screen.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';
import 'package:meta_booking/utils/text_styles/text_styles.dart';

import '../../../../utils/colors/app_colors.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SecondaryAppBar(
        titleString: "Notifications",
        needAction: true,
      ),
      body: Container(
        alignment: Alignment.center,
        width: context.width * 1,
        height: context.height * 1,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.notificationsNoNotificationsYetImage,
              ),
              30.ph,
              const Text(
                "No notification yet . . .",
                style: CustomTextStyles.mDarkBackground514,
              ),
              30.ph,
              IconButton(
                onPressed: () {
                  Get.off(() => const MainScreen(),
                      transition: Transition.fadeIn);
                },
                icon: Container(
                  height: 80,
                  width: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: CColors.scaffoldBackground,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4.07),
                        blurRadius: 12,
                        spreadRadius: 0,
                        color: CColors.blackColor.withOpacity(0.15),
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    Assets.notificationsHomeNotificationImage,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
