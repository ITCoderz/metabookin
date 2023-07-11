import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';

import '../../../../models/today_model.dart';
import '../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/text_styles/text_styles.dart';

class MainScreenWidgetTile extends StatelessWidget {
  final TodayModel todayModel;

  const MainScreenWidgetTile({
    super.key,
    required this.todayModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 1,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: CColors.containerBackgroundColor,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            todayModel.dateDay,
            style: CustomTextStyles.mBlack514,
          ),
          20.ph,
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: todayModel.detailModelList.length,
            separatorBuilder: (BuildContext context, int index) => 15.ph,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 120,
                child: Card(
                  color: CColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      7,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      15,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 82,
                          height: 82,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                              color: CColors.greyColor),
                        ),
                        10.pw,
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  todayModel.detailModelList[index].shopName,
                                  style: CustomTextStyles.mDescription408,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  todayModel
                                      .detailModelList[index].typeOfCutting,
                                  style: CustomTextStyles.mDescription716,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Flexible(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.circle_outlined,
                                          color: CColors.descriptionColor,
                                          size: 12,
                                        ),
                                        5.pw,
                                        Text(
                                          todayModel
                                              .detailModelList[index].time,
                                          style:
                                              CustomTextStyles.mDescription410,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      todayModel.detailModelList[index].price,
                                      style: CustomTextStyles.mDescription410,
                                    ),
                                    // context.isPortrait ? 20.pw : 250.pw,
                                    Flexible(
                                      child: CustomElevatedButton(
                                        onPressedFunction: () {},
                                        buttonText: "View Details",
                                        width: 110,
                                        isBlue: true,
                                        isBorderStadium: true,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
