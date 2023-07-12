import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meta_booking/reusable_widgets/bottom_nav_bar/reusable_botton_navbar.dart';
import 'package:meta_booking/utils/alignment/widget_alignment.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';
import 'package:meta_booking/utils/text_styles/text_styles.dart';

import '../../../../generated/assets.dart';
import '../../../../reusable_widgets/app_bar/custom_appbar.dart';
import '../../../../reusable_widgets/text_field/search_field.dart';
import '../../../../utils/constants/constant_lists.dart';
import '../../add_location/view/add_location_screen.dart';
import '../components/locations_components.dart';

class LocationsScreen extends StatelessWidget {
  const LocationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        isDark: true,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchTextField(
              textEditingController: TextEditingController(),
            ),
            10.ph,
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Location",
                    style: CustomTextStyles.mDarkBackgroundTwo722,
                  ).alignWidget(
                    alignment: Alignment.centerLeft,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            onTap: () {
                              Get.to(
                                () => const AddLocationScreen(),
                                transition: Transition.fadeIn,
                              );
                            },
                            child: SvgPicture.asset(
                              Assets.iconsAdd,
                            ),
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            onTap: () {},
                            child: SvgPicture.asset(
                              Assets.iconsLocationNearMe,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  20.ph,
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: ConstantLists.locationsModelList.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        10.ph,
                    itemBuilder: (BuildContext context, int index) {
                      return LocationsTileWidget(
                        locationModel: ConstantLists.locationsModelList[index],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(
        selectedIndex: 3,
      ),
    );
  }
}
