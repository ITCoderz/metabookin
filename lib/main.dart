import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:meta_booking/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:meta_booking/reusable_widgets/bottom_nav_bar/reusable_botton_navbar.dart';
import 'package:meta_booking/reusable_widgets/buttons/custom_elevated_button.dart';
import 'package:meta_booking/reusable_widgets/text_field/custom_text_field.dart';
import 'package:meta_booking/utils/colors/app_colors.dart';
import 'package:meta_booking/utils/gaps/gaps.dart';
import 'package:meta_booking/utils/text_styles/text_styles.dart';
import 'package:meta_booking/utils/theme/theme_data.dart';

import 'bindings/initializing_dependency.dart';
import 'generated/assets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MetaBookingApp(),
  );
}

class MetaBookingApp extends StatelessWidget {
  const MetaBookingApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
        initialBinding: InitializingDependency(),
        debugShowCheckedModeBanner: false,
        title: 'Meta Booking App',
        theme: CustomThemeData.lightViewTheme,
        home: const WelcomeScreen(),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondaryAppBar(titleString: 'Notification', needAction: true),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CustomAlertDialog(
                      textEditingController: TextEditingController(),
                      onPressFunction: () {},
                      phoneNumber: "sfsdfsfsdf",
                      timeInSeconds: 2,
                    );
                  },
                );
              },
              child: Text("Alert Dialog"))
        ],
      ),
      bottomNavigationBar: CustomBottomAppBar(selectedIndex: 0),
    );
  }
}

class CustomAlertDialog extends StatelessWidget {
  final Function()? onPressFunction;
  final String phoneNumber;
  final TextEditingController textEditingController;
  final int timeInSeconds;

  const CustomAlertDialog({
    Key? key,
    required this.textEditingController,
    required this.onPressFunction,
    required this.phoneNumber,
    required this.timeInSeconds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        scrollable: true,
        backgroundColor: CColors.greyColor,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            0,
          ),
        ),
        elevation: 0.0,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              "OTP Code",
              style: CustomTextStyles.mBlackUnderlined716,
            ),
            10.ph,
            const Text(
              "We will send you OTP code for\nconfirm you phone number",
              style: CustomTextStyles.mBlack512,
              textAlign: TextAlign.center,
            ),
            20.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  phoneNumber,
                  style: CustomTextStyles.mBlack512,
                ),
                Text(
                  "Send again ${timeInSeconds}s",
                  style: CustomTextStyles.mBlackUnderlined12,
                ),
              ],
            ),
            10.ph,
            CustomTextField(
              validatorFunction: (val) {
                return null;
              },
              textEditingController: TextEditingController(),
              width: context.width * 1,
              hintText: "Enter OTP Code Here",
              fillColor: CColors.greyColor,
            ),
            10.ph,
            CustomElevatedButton(
              onPressedFunction: () {},
              buttonText: "SUBMIT",
              width: context.width * 1,
              isDark: true,
            )
          ],
        ));
  }
}
