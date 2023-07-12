class TodayModel {
  String dateDay;

  List<TodayDetailModel> detailModelList;

  TodayModel({
    required this.dateDay,
    required this.detailModelList,
  });
}

class TodayDetailModel {
  String image, shopName, typeOfCutting, time, price;

  TodayDetailModel({
    required this.image,
    required this.shopName,
    required this.typeOfCutting,
    required this.time,
    required this.price,
  });
}
