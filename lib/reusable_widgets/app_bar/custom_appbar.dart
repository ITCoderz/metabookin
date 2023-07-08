import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool needBackButton, needActions, needTitle, needDeleteAction;
  final String titleText;
  final Function()? deleteFunction;

  const CustomAppBar({
    Key? key,
    this.needBackButton = true,
    this.needActions = false,
    this.needTitle = false,
    this.needDeleteAction = false,
    this.titleText = "",
    this.deleteFunction,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CColors.scaffoldBackground,
      elevation: 0,
      forceMaterialTransparency: true,
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: needBackButton
          ? Row(
              children: [
                20.pw,
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      padding: EdgeInsets.zero,
                      alignment: Alignment.center,
                      backgroundColor: CColors.primaryButtonColor,
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: CColors.whiteColor,
                      size: 20,
                    ),
                  ),
                ),
              ],
            )
          : const SizedBox.shrink(),
      leadingWidth: 60,
      title: needTitle
          ? Text(
              titleText,
              style: CustomTextStyles.gWhite724,
            )
          : const SizedBox.shrink(),
      actions: needActions
          ? [
              needDeleteAction
                  ? Container(
                      height: 40,
                      width: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: CColors.orangeAccent,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: IconButton(
                          onPressed: deleteFunction,
                          icon: const FaIcon(
                            FontAwesomeIcons.trashCan,
                            color: CColors.whiteColor,
                            size: 20,
                          )),
                    )
                  : Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.gear,
                            color: CColors.whiteColor,
                            size: 25,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.bell,
                            color: CColors.whiteColor,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
              20.pw,
            ]
          : null,
    );
  }
}
