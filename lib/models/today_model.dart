class TodayModel {
  String dateDay;

  List<TodayDetailModel> detailModelList;

  TodayModel({
    required this.dateDay,
    required this.detailModelList,
  });
}

class TodayDetailModel {
  String assetImageString, shopName, typeOfCutting, time, price;

  TodayDetailModel({
    required this.assetImageString,
    required this.shopName,
    required this.typeOfCutting,
    required this.time,
    required this.price,
  });
}
