import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meta_booking/reusable_widgets/bottom_nav_bar/reusable_botton_navbar.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';
import 'package:meta_booking/utils/text_styles/text_styles.dart';

import '../../../../generated/assets.dart';
import '../../../../reusable_widgets/app_bar/custom_appbar.dart';
import '../../../../reusable_widgets/custom_bottom_sheet.dart';
import '../../../../utils/constants/constant_lists.dart';
import '../component/services_component.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        isDark: true,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            10.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Services",
                  style: CustomTextStyles.mDarkBackgroundTwo722,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      onTap: () {},
                      child: SvgPicture.asset(
                        Assets.iconsAdd,
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      onTap: () {
                        showModalBottomSheet(
                          elevation: 0.0,
                          backgroundColor: Colors.transparent,
                          enableDrag: true,
                          showDragHandle: true,
                          isScrollControlled: true,
                          constraints:
                              BoxConstraints(maxHeight: context.height * 0.8),
                          context: context,
                          builder: (BuildContext context) {
                            return const BottomDetailSheet();
                          },
                        );
                      },
                      child: SvgPicture.asset(
                        Assets.iconsServiceFilter,
                      ),
                    ),
                  ],
                )
              ],
            ),
            50.ph,
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: ConstantLists.serviceModelList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 240,
                  crossAxisCount: context.isPortrait ? 2 : 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0),
              itemBuilder: (BuildContext context, int index) {
                return ServicesGridTile(
                  servicesModel: ConstantLists.serviceModelList[index],
                );
              },
            ),
          ],
        ),
      )),
      bottomNavigationBar: const CustomBottomAppBar(
        selectedIndex: 2,
      ),
    );
  }
}
