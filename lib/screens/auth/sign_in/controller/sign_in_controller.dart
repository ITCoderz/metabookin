import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final signInKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}
