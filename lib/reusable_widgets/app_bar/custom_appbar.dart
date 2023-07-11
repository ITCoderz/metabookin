import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';
import 'package:meta_booking/utils/text_styles/text_styles.dart';
import '../../generated/assets.dart';
import '../../screens/home/notifications_screen/view/notifications_screen.dart';
import '../../utils/colors/app_colors.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isDark, centerTitle, needNotificationAction;

  const PrimaryAppBar({
    super.key,
    this.isDark = true,
    this.centerTitle = true,
    this.needNotificationAction = false,
  });

  @override
  Size get preferredSize => const Size.fromHeight(
        60,
      );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          isDark ? CColors.darkBackground : CColors.scaffoldBackground,
      elevation: 0,
      forceMaterialTransparency: false,
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      title: Image.asset(
        isDark ? Assets.appLightAppIcon : Assets.appDarkAppIcon,
        height: 30,
        width: 132,
      ),
      actions: needNotificationAction
          ? [
              IconButton(
                  onPressed: () {
                    Get.to(
                      () => const NotificationsScreen(),
                      transition: Transition.fadeIn,
                    );
                  },
                  icon: SvgPicture.asset(
                    Assets.iconsNotificationBell,
                    height: 24,
                  )),
              15.pw,
            ]
          : null,
    );
  }
}

class SecondaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool needAction;
  final String titleString;

  const SecondaryAppBar({
    super.key,
    this.needAction = false,
    required this.titleString,
  });

  @override
  Size get preferredSize => const Size.fromHeight(
        60,
      );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CColors.scaffoldBackground,
      elevation: 0,
      forceMaterialTransparency: true,
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          20.pw,
          Expanded(
            child: InkWell(
              borderRadius: BorderRadius.circular(
                10,
              ),
              onTap: () {
                Get.back();
              },
              child: Container(
                height: 28,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    22,
                  ),
                  color: CColors.greyAccentColor,
                ),
                child: const Icon(
                  Icons.arrow_back_rounded,
                  color: CColors.blackColor,
                ),
              ),
            ),
          ),
        ],
      ),
      leadingWidth: 60,
      title: Text(
        titleString,
        style: CustomTextStyles.mBlack716,
      ),
      actions: needAction
          ? [
              Container(
                height: 30,
                decoration: const BoxDecoration(
                  color: CColors.greyAccentColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Assets.iconsFilterList,
                    height: 12,
                  ),
                ),
              ),
              15.pw,
            ]
          : null,
    );
  }
}
