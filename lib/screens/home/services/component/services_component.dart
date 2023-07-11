import 'package:flutter/material.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';

import '../../../../models/services_model.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/text_styles/text_styles.dart';

class ServicesGridTile extends StatelessWidget {
  final ServicesModel servicesModel;

  const ServicesGridTile({
    super.key,
    required this.servicesModel,
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    20,
                  ),
                  topRight: Radius.circular(
                    20,
                  ),
                ),
                color: CColors.greyColor,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
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
                    child: Text(
                      servicesModel.briefDescription,
                      style: CustomTextStyles.mBlack714,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.circle,
                              size: 10,
                              color: CColors.greyAccentTwoColor,
                            ),
                            5.pw,
                            Text(
                              servicesModel.time,
                              style: CustomTextStyles.mGreyAccentTwo408,
                            )
                          ],
                        ),
                        Text(
                          "\$ ${servicesModel.cost}",
                          style: CustomTextStyles.mGreyAccentTwo408,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        "Book your service with ",
                        style: CustomTextStyles.mBlueAccentFour408,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
