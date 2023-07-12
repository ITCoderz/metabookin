import 'package:get/get.dart';

import '../../../../utils/constants/constant_lists.dart';

class ServicesController extends GetxController {
  final filterBarber = ConstantLists.filterBarberShopList;
  final filterSalon = ConstantLists.filterHairSalonList;

  selectInterestBarber({required int index}) {
    bool tempBool = filterBarber[index].isSelected;
    if (tempBool) {
      filterBarber[index].isSelected = false;
      update();
    } else {
      filterBarber[index].isSelected = true;
      update();
    }
  }

  selectInterestSalon({required int index}) {
    bool tempBool = filterSalon[index].isSelected;
    if (tempBool) {
      filterSalon[index].isSelected = false;
      update();
    } else {
      filterSalon[index].isSelected = true;
      update();
    }
  }
}
