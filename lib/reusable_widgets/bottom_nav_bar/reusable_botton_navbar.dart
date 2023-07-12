import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meta_booking/utils/constants/constant_lists.dart';

import '../../utils/colors/app_colors.dart';

class CustomBottomAppBar extends StatelessWidget {
  final int selectedIndex;

  const CustomBottomAppBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: CColors.blackColor,
      elevation: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int itemIndex = 0;
              itemIndex <= ConstantLists.bottomAppBarList.length - 1;
              itemIndex++) ...[
            BottomBarComponent(
              itemIndex: itemIndex,
              selectedIndex: selectedIndex,
              assetImage:
                  ConstantLists.bottomAppBarList[itemIndex].assetImageString,
              onTapFunction:
                  ConstantLists.bottomAppBarList[itemIndex].onTapFunction,
            ),
          ],
        ],
      ),
    );
  }
}

class BottomBarComponent extends StatelessWidget {
  final int selectedIndex, itemIndex;
  final String assetImage;
  final Function()? onTapFunction;

  const BottomBarComponent({
    super.key,
    required this.itemIndex,
    required this.selectedIndex,
    required this.assetImage,
    required this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectedIndex == itemIndex ? null : onTapFunction,
      borderRadius: BorderRadius.circular(
        10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: 45,
            height: 10,
          ),
          SvgPicture.asset(
            assetImage,
            colorFilter: ColorFilter.mode(
              selectedIndex == itemIndex
                  ? CColors.descriptionColor
                  : CColors.whiteColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(
            width: 45,
            height: 10,
          ),
        ],
      ),
    );
  }
}
