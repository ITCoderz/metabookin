import 'package:flutter/material.dart';
import 'package:meta_booking/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:meta_booking/reusable_widgets/bottom_nav_bar/reusable_botton_navbar.dart';
import 'package:meta_booking/reusable_widgets/buttons/custom_elevated_button.dart';
import 'package:meta_booking/utils/alignment/widget_alignment.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';
import 'package:get/get.dart';
import 'package:meta_booking/utils/text_styles/text_styles.dart';
import '../../../../reusable_widgets/option_container.dart';
import '../../../../reusable_widgets/text_field/custom_text_field.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../locations/view/locations_screen.dart';
import '../controller/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profileController = Get.find<ProfileController>();
    return Scaffold(
      appBar: const PrimaryAppBar(
        isDark: true,
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
              Container(
                width: context.width * 1,
                height: 280,
                decoration: const BoxDecoration(
                  color: CColors.greyColor,
                ),
              ),
              20.ph,
              CustomTextField(
                height: 80,
                width: context.width * 1,
                maxLines: 5,
                textEditingController: profileController.aboutMyselfController,
                validatorFunction: (val) {
                  return null;
                },
                hintText: "About Myself",
              ),
              20.ph,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      onPressedFunction: () {},
                      buttonText: "SERVICES",
                      width: 100,
                      isBlue: true,
                    ),
                  ),
                  20.pw,
                  Expanded(
                    child: CustomElevatedButton(
                      onPressedFunction: () {
                        Get.to(
                          () => const LocationsScreen(),
                          transition: Transition.fadeIn,
                        );
                      },
                      buttonText: "LOCATIONS",
                      width: 100,
                      isBlue: true,
                    ),
                  ),
                ],
              ),
              20.ph,
              const Text(
                "Profile Info",
                style: CustomTextStyles.mBlack510,
              ).alignWidget(
                alignment: Alignment.centerLeft,
              ),
              10.ph,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: CustomTextField(
                      height: 50,
                      width: context.width * 1,
                      textEditingController:
                          profileController.firstNameController,
                      validatorFunction: (val) {
                        return null;
                      },
                      hintText: "First Name",
                    ),
                  ),
                  20.pw,
                  Expanded(
                    child: CustomTextField(
                      height: 50,
                      width: context.width * 1,
                      textEditingController:
                          profileController.lastNameController,
                      validatorFunction: (val) {
                        return null;
                      },
                      hintText: "Last Name",
                      isPassword: true,
                    ),
                  ),
                ],
              ),
              20.ph,
              CustomTextField(
                height: 50,
                width: context.width * 1,
                textEditingController: profileController.emailController,
                validatorFunction: (val) {
                  return null;
                },
                hintText: "E-mail",
                isEmail: true,
              ),
              20.ph,
              CustomTextField(
                height: 50,
                width: context.width * 1,
                textEditingController: profileController.phoneNumberController,
                validatorFunction: (val) {
                  return null;
                },
                hintText: "Phone Number",
                isPhone: true,
                isEmail: false,
              ),
              20.ph,
              CustomTextField(
                height: 50,
                width: context.width * 1,
                textEditingController: profileController.passwordController,
                validatorFunction: (val) {
                  return null;
                },
                hintText: "Password",
                isPassword: true,
              ),
              20.ph,
              const Text(
                "What’s your primary business category?",
                style: CustomTextStyles.mBlack510,
              ).alignWidget(
                alignment: Alignment.centerLeft,
              ),
              10.ph,
              /*Change Afterwards*/
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Obx(() {
                      return OptionContainer(
                        onTapFunction: () {
                          profileController.toggleBarberShop(optionValue: true);
                        },
                        isSelected: profileController.isBarberShop.value,
                        optionTitle: "Barbershop",
                      );
                    }),
                  ),
                  20.pw,
                  Expanded(
                    child: Obx(() {
                      return OptionContainer(
                        onTapFunction: () {
                          profileController.toggleHairSalon(optionValue: true);
                        },
                        isSelected: profileController.isHairSalon.value,
                        optionTitle: "Hair Salon",
                      );
                    }),
                  ),
                ],
              ),
              20.ph,
              const Text(
                "Mailing Address",
                style: CustomTextStyles.mBlack510,
              ).alignWidget(
                alignment: Alignment.centerLeft,
              ),
              10.ph,
              CustomTextField(
                height: 50,
                width: context.width * 1,
                textEditingController: profileController.addressController,
                validatorFunction: (val) {
                  return null;
                },
                hintText: "Address",
                isPassword: true,
              ),
              20.ph,
              CustomTextField(
                height: 50,
                width: context.width * 1,
                textEditingController: profileController.cityController,
                validatorFunction: (val) {
                  return null;
                },
                hintText: "City",
                isPassword: true,
              ),
              20.ph,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: CustomTextField(
                      height: 50,
                      width: context.width * 1,
                      textEditingController: profileController.stateController,
                      validatorFunction: (val) {
                        return null;
                      },
                      hintText: "State",
                    ),
                  ),
                  20.pw,
                  Expanded(
                    child: CustomTextField(
                      height: 50,
                      width: context.width * 1,
                      textEditingController:
                          profileController.zipCodeController,
                      validatorFunction: (val) {
                        return null;
                      },
                      hintText: "Zip Code",
                      isPassword: true,
                    ),
                  ),
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
                buttonText: "DELETE PROFILE",
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
      bottomNavigationBar: const CustomBottomAppBar(
        selectedIndex: 3,
      ),
    );
  }
}
