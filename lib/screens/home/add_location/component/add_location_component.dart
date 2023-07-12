import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta_booking/utils/alignment/widget_alignment.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';

import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/text_styles/text_styles.dart';

class AddNewLocationsTileWidget extends StatelessWidget {
  final String shopName, shopTitle, shopLocation, contactNumber;

  const AddNewLocationsTileWidget({
    super.key,
    required this.shopName,
    required this.shopTitle,
    required this.shopLocation,
    required this.contactNumber,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 222,
      width: context.width * 1,
      child: Stack(
        children: [
          Container(
            height: 222,
            width:
                context.isPortrait ? context.width * 0.45 : context.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: CColors.greyColor,
            ),
          ).alignWidget(
            alignment: Alignment.centerLeft,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            height: 180,
            width: context.isPortrait
                ? context.width * 0.55
                : context.width * 0.55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: CColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 4),
                  blurRadius: 10,
                  spreadRadius: 0,
                  color: CColors.blackColor.withOpacity(0.2),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    shopName,
                    style: CustomTextStyles.rBlack410,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    shopTitle,
                    style: CustomTextStyles.rBlack612,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    shopLocation,
                    style: CustomTextStyles.rBlack410,
                    textAlign: TextAlign.left,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(
                        5,
                      ),
                      decoration: const BoxDecoration(
                        color: CColors.blueAccent,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.phone,
                        color: CColors.whiteColor,
                        size: 20,
                      ),
                    ),
                    5.pw,
                    Text(
                      contactNumber,
                      style: CustomTextStyles.rBlack410,
                      textAlign: TextAlign.left,
                    ),
                  ],
                )
              ],
            ),
          ).alignWidget(
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
