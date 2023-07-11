import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta_booking/reusable_widgets/text_field/custom_text_field.dart';
import 'package:meta_booking/screens/auth/sign_up/view/sign_up_screen.dart';
import 'package:meta_booking/utils/alignment/widget_alignment.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';

import '../../../../generated/assets.dart';
import '../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/text_styles/text_styles.dart';

class SignInImageComponent extends StatelessWidget {
  const SignInImageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: CColors.blackColor,
        alignment: Alignment.center,
        child: Image.asset(
          Assets.appLightAppIcon,
          height: 30,
          width: 135,
        ),
      ),
    );
  }
}

class FormComponent extends StatelessWidget {
  final GlobalKey<FormState> signInKey;
  final TextEditingController emailController, passwordController;
  final Function()? loginFunction;

  const FormComponent({
    super.key,
    required this.signInKey,
    required this.emailController,
    required this.passwordController,
    required this.loginFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        key: signInKey,
        child: SingleChildScrollView(
          child: Container(
            color: CColors.whiteColor,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Sign in",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.mBlack716,
                ),
                20.ph,
                CustomTextField(
                  height: 50,
                  width: context.width * 1,
                  textEditingController: emailController,
                  validatorFunction: (val) {
                    return null;
                  },
                  hintText: "Email",
                ),
                20.ph,
                CustomTextField(
                  height: 50,
                  width: context.width * 1,
                  textEditingController: passwordController,
                  validatorFunction: (val) {
                    return "";
                  },
                  hintText: "Password",
                ),
                20.ph,
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Forgot Password?",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.mBlackUnderlined412,
                  ),
                ).alignWidget(
                  alignment: Alignment.centerRight,
                ),
                20.ph,
                CustomElevatedButton(
                  onPressedFunction: loginFunction,
                  buttonText: "LOGIN",
                  width: context.width * 1,
                  isDark: true,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Don’t have an account?",
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.mBlack514,
                    ),
                    5.pw,
                    InkWell(
                      onTap: () {
                        Get.to(
                          () => const SignUpScreen(),
                          transition: Transition.fadeIn,
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        style: CustomTextStyles.mDarkBackground714,
                      ),
                    )
                  ],
                ),
                20.ph,
                InkWell(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 28,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        22,
                      ),
                      color: CColors.greyAccentColor,
                    ),
                    child: const Icon(
                      Icons.arrow_back_rounded,
                      color: CColors.blackColor,
                    ),
                  ),
                ).alignWidget(
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
