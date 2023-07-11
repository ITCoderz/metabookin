import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta_booking/reusable_widgets/column_component.dart';
import 'package:meta_booking/reusable_widgets/row_component.dart';

import '../component/welcome_screen_component.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          height: context.height * 1,
          width: context.width * 1,
          child: context.isPortrait
              ? const ColumnComponent(
                  childrenList: [
                    ImageComponent(),
                    DescriptionComponent(),
                  ],
                )
              : const RowComponent(
                  childrenList: [
                    ImageComponent(),
                    DescriptionComponent(),
                  ],
                ),
        ),
      ),
    );
  }
}
