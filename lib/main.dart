import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta_booking/utils/theme/theme_data.dart';

import 'bindings/initializing_dependency.dart';

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
      body: Center(
        child: Text("Lato",style: TextStyle(fontFamily: ""),),
      ),
    );
  }
}
