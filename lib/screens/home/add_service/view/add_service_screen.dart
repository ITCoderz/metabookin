import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta_booking/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:meta_booking/screens/home/add_service/controller/add_service_controller.dart';
import 'package:meta_booking/utils/alignment/widget_alignment.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';

import '../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../reusable_widgets/custom_switch.dart';
import '../../../../reusable_widgets/text_field/custom_text_field.dart';
import '../../../../utils/text_styles/text_styles.dart';
import '../component/add_service_component.dart';

class AddServiceScreen extends StatelessWidget {
  const AddServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final addServiceController = Get.find<AddServiceController>();
    return Scaffold(
      appBar: const SecondaryAppBar(
        titleString: "Add Service",
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
              AddServicesImageTitleDescriptionWidget(
                serviceCategory: addServiceController.categoryController.text,
                cost: addServiceController.priceController.text,
                timeInMinutes: addServiceController.durationController.text,
              ).alignWidget(
                alignment: Alignment.centerLeft,
              ),
              30.ph,
              const Text(
                "Service Name",
                style: CustomTextStyles.mBlack510,
              ).alignWidget(
                alignment: Alignment.centerLeft,
              ),
              10.ph,
              CustomTextField(
                height: 50,
                width: context.width * 1,
                textEditingController: addServiceController.nameController,
                validatorFunction: (val) {
                  return null;
                },
                hintText: "Name",
              ),
              20.ph,
              CustomTextField(
                height: 50,
                width: context.width * 1,
                textEditingController: addServiceController.categoryController,
                validatorFunction: (val) {
                  return null;
                },
                hintText: "Category",
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
                          addServiceController.priceController,
                      validatorFunction: (val) {
                        return null;
                      },
                      hintText: "Price",
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
                          addServiceController.durationController,
                      validatorFunction: (val) {
                        return null;
                      },
                      hintText: "Duration",
                      isEmail: false,
                      isPhone: true,
                    ),
                  ),
                ],
              ),
              20.ph,
              CustomTextField(
                height: 80,
                width: context.width * 1,
                maxLines: 5,
                textEditingController:
                    addServiceController.descriptionController,
                validatorFunction: (val) {
                  return null;
                },
                hintText: "Description",
              ),
              20.ph,
              Row(
                children: [
                  Obx(() {
                    return CustomSwitch(
                      switchValue: addServiceController.isActive.value,
                      onToggle: (val) {
                        addServiceController.toggleIsActive(value: val);
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
                buttonText: "DELETE SERVICE",
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
