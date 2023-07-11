import 'package:get/get.dart';

import '../screens/auth/sign_in/controller/sign_in_controller.dart';
import '../screens/auth/sign_up/controller/sign_up_controller.dart';
import '../screens/home/profile/controller/profile_controller.dart';

class InitializingDependency implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SignInController(),
      fenix: true,
    );
    Get.lazyPut(
      () => SignUpController(),
      fenix: true,
    );
    Get.lazyPut(
      () => ProfileController(),
      fenix: true,
    );
  }
}
