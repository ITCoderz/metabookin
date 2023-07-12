import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../utils/colors/app_colors.dart';

class CustomSwitch extends StatelessWidget {
  final bool switchValue;
  final Function(bool) onToggle;

  const CustomSwitch({
    super.key,
    required this.switchValue,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 80,
      height: 36,
      activeColor: CColors.blueAccent,
      toggleColor: Colors.white,
      inactiveColor: CColors.blackColor.withOpacity(
        0.1,
      ),
      value: switchValue,
      borderRadius: 50.0,
      onToggle: onToggle,
    );
  }
}
