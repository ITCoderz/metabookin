import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta_booking/reusable_widgets/column_component.dart';
import 'package:meta_booking/reusable_widgets/row_component.dart';
import 'package:meta_booking/screens/auth/sign_in/component/sign_in_components.dart';

import '../../../home/main_screen/view/main_screen.dart';
import '../controller/sign_in_controller.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signInController = Get.find<SignInController>();
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          height: context.height * 1,
          width: context.width * 1,
          child: context.isPortrait
              ? ColumnComponent(
                  childrenList: [
                    const SignInImageComponent(),
                    FormComponent(
                      signInKey: signInController.signInKey,
                      emailController: signInController.emailController,
                      passwordController: signInController.passwordController,
                      loginFunction: () {
                        Get.offAll(
                          () => const MainScreen(),
                          transition: Transition.fadeIn,
                        );
                      },
                    ),
                  ],
                )
              : RowComponent(
                  childrenList: [
                    const SignInImageComponent(),
                    FormComponent(
                      signInKey: signInController.signInKey,
                      emailController: signInController.emailController,
                      passwordController: signInController.passwordController,
                      loginFunction: () {
                        Get.offAll(
                          () => const MainScreen(),
                          transition: Transition.fadeIn,
                        );
                      },
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
