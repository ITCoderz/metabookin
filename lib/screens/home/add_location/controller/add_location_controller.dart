import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddLocationController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final isShareLocationOn = false.obs;
  final payWithCreditCard = false.obs;
  final payWithCash = false.obs;
  final isActive = false.obs;

  toggleIsShareLocationOn({required bool value}) {
    isShareLocationOn.value = value;
  }

  togglePayWithCreditCard({required bool value}) {
    payWithCreditCard.value = value;
  }

  togglePayWithCash({required bool value}) {
    payWithCash.value = value;
  }

  toggleIsActive({required bool value}) {
    isActive.value = value;
  }
}
