import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class CustomThemeData {
  CustomThemeData._();

  static ThemeData lightViewTheme = ThemeData(
    fontFamily: 'Gotham',
    scaffoldBackgroundColor: CColors.scaffoldBackground,
    useMaterial3: true,
  );
}
