
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class CustomBottomAppBar extends StatelessWidget {
  final int selectedIndex;

  const CustomBottomAppBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: CColors.whiteColor.withOpacity(
        0.05,
      ),
      elevation: 0.0,
      child: Row(
        children: [
          context.isPortrait ? 30.pw : const Spacer(),
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: selectedIndex == 0
                ? null
                : () {

                  },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                60.pw,

                2.ph,
                const Text(
                  "Home",
                  style: CustomTextStyles.mWhite412,
                ),
              ],
            ),
          ),
          Spacer(
            flex: context.isPortrait ? 1 : 3,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(
              10,
            ),
            onTap: selectedIndex == 1
                ? null
                : () {

                  },
            child: Column(
              children: [
                60.pw,

                2.ph,
                const Text(
                  "Add New",
                  style: CustomTextStyles.mWhite412,
                ),
                5.ph,
              ],
            ),
          ),
          context.isPortrait ? 30.pw : const Spacer(),
        ],
      ),
    );
  }
}
