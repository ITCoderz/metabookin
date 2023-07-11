import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta_booking/screens/auth/sign_in/view/sign_in_screen.dart';
import 'package:meta_booking/screens/auth/sign_up/controller/sign_up_controller.dart';
import 'package:meta_booking/utils/alignment/widget_alignment.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';

import '../../../../generated/assets.dart';
import '../../../../reusable_widgets/app_bar/custom_appbar.dart';
import '../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../reusable_widgets/custom_alert_dialog.dart';
import '../../../../reusable_widgets/text_field/custom_text_field.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/text_styles/text_styles.dart';
import '../../../home/main_screen/view/main_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpScreen = Get.find<SignUpController>();
    return Scaffold(
      appBar: context.isLandscape
          ? const PrimaryAppBar(
              isDark: true,
              centerTitle: true,
            )
          : null,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              context.isPortrait
                  ? Container(
                      height: 300,
                      width: context.width * 1,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: CColors.blackColor,
                      ),
                      child: Image.asset(
                        Assets.appLightAppIcon,
                        height: 30,
                        width: 135,
                      ),
                    )
                  : const SizedBox.shrink(),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Sign in",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.mBlack716,
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
                              signUpScreen.firstNameController,
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
                              signUpScreen.lastNameController,
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
                    textEditingController: signUpScreen.emailController,
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
                    textEditingController: signUpScreen.phoneNumberController,
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
                    textEditingController: signUpScreen.passwordController,
                    validatorFunction: (val) {
                      return null;
                    },
                    hintText: "Password",
                    isPassword: true,
                  ),
                  20.ph,
                  /*Change Afterwards*/
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: CustomTextField(
                          height: 50,
                          width: context.width * 1,
                          textEditingController: TextEditingController(),
                          validatorFunction: (val) {
                            return null;
                          },
                          hintText: "Barbershop",
                        ),
                      ),
                      20.pw,
                      Expanded(
                        child: CustomTextField(
                          height: 50,
                          width: context.width * 1,
                          textEditingController: TextEditingController(),
                          validatorFunction: (val) {
                            return null;
                          },
                          hintText: "Hair Saloon",
                          isPassword: true,
                        ),
                      ),
                    ],
                  ),
                  20.ph,
                  const Text(
                    "What’s your primary business category?",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.mBlackUnderlined412,
                  ).alignWidget(
                    alignment: Alignment.centerLeft,
                  ),
                  20.ph,
                  CustomElevatedButton(
                    onPressedFunction: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return CustomAlertDialog(
                            textEditingController:
                                signUpScreen.otpPinController,
                            onPressFunction: () {
                              Get.offAll(
                                () => const MainScreen(),
                                transition: Transition.fadeIn,
                              );
                            },
                            phoneNumber:
                                signUpScreen.phoneNumberController.text,
                            timeInSeconds: 30,
                          );
                        },
                      );
                    },
                    buttonText: "SIGN UP",
                    width: context.width * 1,
                    isDark: true,
                  ),
                  50.ph,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Already have an account?",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.mBlack514,
                      ),
                      5.pw,
                      InkWell(
                        onTap: () {
                          Get.offAll(
                            () => const SignInScreen(),
                            transition: Transition.fadeIn,
                          );
                        },
                        child: const Text(
                          "Sign In",
                          style: CustomTextStyles.mDarkBackground714,
                        ),
                      )
                    ],
                  ),
                  20.ph,
                ],
              ).paddingSymmetric(
                horizontal: 15,
                vertical: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
