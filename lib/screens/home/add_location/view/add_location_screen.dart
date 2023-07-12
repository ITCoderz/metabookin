import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta_booking/screens/home/add_location/controller/add_location_controller.dart';
import 'package:meta_booking/utils/alignment/widget_alignment.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';

import '../../../../reusable_widgets/app_bar/custom_appbar.dart';
import '../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../reusable_widgets/custom_switch.dart';
import '../../../../reusable_widgets/text_field/custom_text_field.dart';
import '../../../../utils/text_styles/text_styles.dart';
import '../component/add_location_component.dart';

class AddLocationScreen extends StatelessWidget {
  const AddLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final addLocationController = Get.find<AddLocationController>();
    return Scaffold(
      appBar: const SecondaryAppBar(
        titleString: "Add Location",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AddNewLocationsTileWidget(
                shopName: addLocationController.nameController.text,
                shopTitle: addLocationController.titleController.text,
                shopLocation: addLocationController.addressController.text,
                contactNumber: addLocationController.phoneController.text,
              ),
              30.ph,
              const Text(
                "Location Name",
                style: CustomTextStyles.mBlack510,
              ).alignWidget(
                alignment: Alignment.centerLeft,
              ),
              10.ph,
              CustomTextField(
                height: 50,
                width: context.width * 1,
                textEditingController: addLocationController.nameController,
                validatorFunction: (val) {
                  return null;
                },
                hintText: "Name",
              ),
              20.ph,
              CustomTextField(
                height: 50,
                width: context.width * 1,
                textEditingController: addLocationController.titleController,
                validatorFunction: (val) {
                  return null;
                },
                hintText: "Title",
              ),
              20.ph,
              const Text(
                "Location Address",
                style: CustomTextStyles.mBlack510,
              ).alignWidget(
                alignment: Alignment.centerLeft,
              ),
              10.ph,
              CustomTextField(
                height: 50,
                width: context.width * 1,
                textEditingController: addLocationController.addressController,
                validatorFunction: (val) {
                  return null;
                },
                hintText: "Address",
              ),
              20.ph,
              CustomTextField(
                height: 50,
                width: context.width * 1,
                textEditingController: addLocationController.cityController,
                validatorFunction: (val) {
                  return null;
                },
                hintText: "City",
              ),
              20.ph,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: CustomTextField(
                      height: 50,
                      width: context.width * 1,
                      textEditingController:
                          addLocationController.stateController,
                      validatorFunction: (val) {
                        return null;
                      },
                      hintText: "State",
                      isPhone: true,
                      isEmail: false,
                    ),
                  ),
                  20.pw,
                  Expanded(
                    child: CustomTextField(
                      height: 50,
                      width: context.width * 1,
                      textEditingController:
                          addLocationController.zipCodeController,
                      validatorFunction: (val) {
                        return null;
                      },
                      hintText: "Zip Code",
                      isEmail: false,
                      isPhone: true,
                    ),
                  ),
                ],
              ),
              20.ph,
              Row(
                children: [
                  Obx(() {
                    return CustomSwitch(
                      switchValue:
                          addLocationController.isShareLocationOn.value,
                      onToggle: (val) {
                        addLocationController.toggleIsShareLocationOn(
                            value: val);
                      },
                    );
                  }),
                  30.pw,
                  const Text(
                    "Shared Location (salon or studio)",
                    style: CustomTextStyles.mBlack510,
                  )
                ],
              ),
              20.ph,
              CustomTextField(
                height: 50,
                width: context.width * 1,
                textEditingController: addLocationController.phoneController,
                validatorFunction: (val) {
                  return null;
                },
                isPhone: true,
                isEmail: false,
                hintText: "Phone Number",
              ),
              20.ph,
              Row(
                children: [
                  Obx(() {
                    return CustomSwitch(
                      switchValue:
                          addLocationController.payWithCreditCard.value,
                      onToggle: (val) {
                        addLocationController.togglePayWithCreditCard(
                            value: val);
                      },
                    );
                  }),
                  30.pw,
                  const Text(
                    "Pay with Credit Cards",
                    style: CustomTextStyles.mBlack510,
                  )
                ],
              ),
              20.ph,
              Row(
                children: [
                  Obx(() {
                    return CustomSwitch(
                      switchValue: addLocationController.payWithCash.value,
                      onToggle: (val) {
                        addLocationController.togglePayWithCash(value: val);
                      },
                    );
                  }),
                  30.pw,
                  const Text(
                    "Pay with Cash",
                    style: CustomTextStyles.mBlack510,
                  )
                ],
              ),
              20.ph,
              Row(
                children: [
                  Obx(() {
                    return CustomSwitch(
                      switchValue: addLocationController.isActive.value,
                      onToggle: (val) {
                        addLocationController.toggleIsActive(value: val);
                      },
                    );
                  }),
                  30.pw,
                  const Text(
                    "Active",
                    style: CustomTextStyles.mBlack510,
                  )
                ],
              ),
              20.ph,
              const Text(
                "Updates may take up to 12 hours",
                style: CustomTextStyles.mBlack510,
              ).alignWidget(
                alignment: Alignment.centerLeft,
              ),
              10.ph,
              CustomElevatedButton(
                onPressedFunction: () {},
                buttonText: "UPDATE",
                width: context.width * 1,
                isDark: true,
              ),
              40.ph,
              const Text(
                "Deleting your profile will remove all your personal information. Any upcoming appointments must be canceled prioer to delete.",
                style: CustomTextStyles.mBlack510,
                textAlign: TextAlign.center,
              ).alignWidget(
                alignment: Alignment.center,
              ),
              10.ph,
              CustomElevatedButton(
                onPressedFunction: () {},
                buttonText: "DELETE LOCATION",
                width: context.width * 1,
                isRed: true,
              ),
              20.ph,
              const Text(
                "visit metabookingapp.com for Terms for Condition",
                style: CustomTextStyles.mBlack510,
                textAlign: TextAlign.center,
              ).alignWidget(
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
