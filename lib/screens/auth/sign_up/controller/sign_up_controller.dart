import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController otpPinController = TextEditingController();
  final isBarberShop = false.obs;
  final isHairSalon = false.obs;

  toggleBarberShop({required bool optionValue}) {
    if (!isBarberShop.value) {
      isBarberShop.value = optionValue;
      isHairSalon.value = !optionValue;
    }
  }

  toggleHairSalon({required bool optionValue}) {
    if (!isHairSalon.value) {
      isHairSalon.value = optionValue;
      isBarberShop.value = !optionValue;
    }
  }
}
