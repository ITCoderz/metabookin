import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddServiceController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  final isActive = false.obs;

  toggleIsActive({required bool value}) {
    isActive.value = value;
  }
}
