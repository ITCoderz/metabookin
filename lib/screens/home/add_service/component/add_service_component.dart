import 'package:flutter/material.dart';
import 'package:meta_booking/generated/assets.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';

import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/text_styles/text_styles.dart';

class AddServicesImageTitleDescriptionWidget extends StatelessWidget {
  final String serviceCategory, cost, timeInMinutes;

  const AddServicesImageTitleDescriptionWidget({
    super.key,
    required this.serviceCategory,
    required this.cost,
    required this.timeInMinutes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  6,
                ),
                color: CColors.greyColor,
                image: const DecorationImage(
                  image: AssetImage(
                    Assets.serviceImageAddServiceImage,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                top: 15,
                left: 5,
                right: 5,
                bottom: 5,
              ),
              decoration: const BoxDecoration(
                color: CColors.whiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    20,
                  ),
                  bottomRight: Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.pw,
                        Text(
                          serviceCategory,
                          style: CustomTextStyles.mBlack510,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 3,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            color: CColors.descriptionColor,
                            borderRadius: BorderRadius.circular(
                              35,
                            ),
                          ),
                          child: Text(
                            "\$ $cost",
                            style: CustomTextStyles.rWhite712,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.circle_outlined,
                              size: 14,
                              color: CColors.descriptionColor,
                            ),
                            5.pw,
                            Text(
                              "$timeInMinutes min",
                              style: CustomTextStyles.rDescriptionColor712,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
