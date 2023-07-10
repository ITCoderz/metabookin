import '../../generated/assets.dart';
import '../../models/bottom_app_bar_model.dart';

class ConstantLists {
  ConstantLists._();

  static List<BottomAppBarModel> bottomAppBarList = [
    BottomAppBarModel(
      assetImageString: Assets.bottomNavBarToday,
      onTapFunction: () {},
    ),
    BottomAppBarModel(
      assetImageString: Assets.bottomNavBarCalender,
      onTapFunction: () {},
    ),
    BottomAppBarModel(
      assetImageString: Assets.bottomNavBarServices,
      onTapFunction: () {},
    ),
    BottomAppBarModel(
      assetImageString: Assets.bottomNavBarProfile,
      onTapFunction: () {},
    ),
  ];
}
