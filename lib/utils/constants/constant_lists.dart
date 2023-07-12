import 'package:get/get.dart';
import 'package:meta_booking/models/locations_model.dart';
import 'package:meta_booking/screens/home/profile/view/profile_screen.dart';

import '../../generated/assets.dart';
import '../../models/bottom_app_bar_model.dart';
import '../../models/filter_model.dart';
import '../../models/services_model.dart';
import '../../models/today_model.dart';
import '../../screens/home/calendar/view/calendar_screen.dart';
import '../../screens/home/main_screen/view/main_screen.dart';
import '../../screens/home/services/view/services_screen.dart';

class ConstantLists {
  ConstantLists._();

  static List<FilterModel> filterBarberShopList = [
    FilterModel(
      isSelected: false,
      filterHeaderName: "All",
    ),
    FilterModel(
      isSelected: false,
      filterHeaderName: "Seniors - Señores",
    ),
    FilterModel(
      isSelected: false,
      filterHeaderName: "Barbershop",
    ),
    FilterModel(
      isSelected: false,
      filterHeaderName: "Curly Haircut",
    ),
    FilterModel(
      isSelected: false,
      filterHeaderName: "Seniors - Señores",
    ),
  ];
  static List<FilterModel> filterHairSalonList = [
    FilterModel(
      isSelected: false,
      filterHeaderName: "All",
    ),
    FilterModel(
      isSelected: false,
      filterHeaderName: "Seniors - Señores",
    ),
    FilterModel(
      isSelected: false,
      filterHeaderName: "Barbershop",
    ),
    FilterModel(
      isSelected: false,
      filterHeaderName: "Curly Haircut",
    ),
    FilterModel(
      isSelected: false,
      filterHeaderName: "Seniors - Señores",
    ),
  ];
  static List<BottomAppBarModel> bottomAppBarList = [
    BottomAppBarModel(
      assetImageString: Assets.bottomNavBarToday,
      onTapFunction: () {
        Get.offAll(
          () => const MainScreen(),
          transition: Transition.fadeIn,
        );
      },
    ),
    BottomAppBarModel(
      assetImageString: Assets.bottomNavBarCalender,
      onTapFunction: () {
        Get.offAll(
          () => const CalendarScreen(),
          transition: Transition.fadeIn,
        );
      },
    ),
    BottomAppBarModel(
      assetImageString: Assets.bottomNavBarServices,
      onTapFunction: () {
        Get.offAll(
          () => const ServicesScreen(),
          transition: Transition.fadeIn,
        );
      },
    ),
    BottomAppBarModel(
      assetImageString: Assets.bottomNavBarProfile,
      onTapFunction: () {
        Get.to(
          () => const ProfileScreen(),
          transition: Transition.fadeIn,
        );
      },
    ),
  ];
  static List<TodayModel> todayModelList = [
    TodayModel(
      dateDay: "Today",
      detailModelList: [
        TodayDetailModel(
          assetImageString: "",
          shopName: "DOMINICAN SPORTS BARBERSHOP #2",
          typeOfCutting: "XTRAS - EXTRAS",
          time: "30 min",
          price: "25.00",
        ),
        TodayDetailModel(
          assetImageString: "",
          shopName: "DOMINICAN SPORTS BARBERSHOP #2",
          typeOfCutting: "BREAD",
          time: "30 min",
          price: "25.00",
        ),
      ],
    ),
    TodayModel(
      dateDay: "Tue, 11 Apr",
      detailModelList: [
        TodayDetailModel(
          assetImageString: "",
          shopName: "DOMINICAN SPORTS BARBERSHOP #2",
          typeOfCutting: "SKIN HIGH FADE",
          time: "30 min",
          price: "25.00",
        ),
      ],
    ),
  ];

  static List<ServicesModel> serviceModelList = [
    ServicesModel(
      assetImageString: "",
      briefDescription: "#1 on top, #0 on side",
      time: "2:20",
      cost: "35.00",
    ),
    ServicesModel(
      assetImageString: "",
      briefDescription: "Blow Out #3 on top and bread",
      time: "2:20",
      cost: "35.00",
    ),
    ServicesModel(
      assetImageString: "",
      briefDescription: "Haircut 1",
      time: "2:20",
      cost: "35.00",
    ),
    ServicesModel(
      assetImageString: "",
      briefDescription: "Girl Hairstyle 04",
      time: "2:20",
      cost: "35.00",
    ),
  ];
  static List<LocationsModel> locationsModelList = [
    LocationsModel(
      shopNo: "1",
      shopName: "PLEASANT HILL / LILBURN",
      shopLocation: "510 Pleasant Hill Rd, Lilburn, GA 30047",
      contactNumber: "0123456",
    ),
    LocationsModel(
      shopNo: "1",
      shopName: "PLEASANT HILL / LILBURN",
      shopLocation: "510 Pleasant Hill Rd, Lilburn, GA 30047",
      contactNumber: "0123456",
    ),
  ];
}
