# meta_booking

Flutter Project by ITCoderz. Flutter SDK Version for the App is 3.10.5 .


SizedBox(
width: 80,
height: 36,
child: FittedBox(
fit: BoxFit.fill,
child: Obx(() {
return CupertinoSwitch(
value: addServiceController.isActive.value,
onChanged: (val) {
addServiceController.toggleIsActive(value: val);
},
thumbColor: Colors.white,
activeColor: CColors.blueAccent,
trackColor: CColors.blackColor.withOpacity(
0.1,
),
);
}),
),
),





