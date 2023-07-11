import 'package:flutter/material.dart';
import 'package:meta_booking/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:meta_booking/reusable_widgets/bottom_nav_bar/reusable_botton_navbar.dart';
import 'package:meta_booking/utils/constants/constant_lists.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';

import '../component/main_screen_components.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        isDark: false,
        centerTitle: false,
        needNotificationAction: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: ConstantLists.todayModelList.length,
                  separatorBuilder: (BuildContext context, int index) => 10.ph,
                  itemBuilder: (BuildContext context, int index) {
                    return MainScreenWidgetTile(
                      todayModel: ConstantLists.todayModelList[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(
        selectedIndex: 0,
      ),
    );
  }
}
