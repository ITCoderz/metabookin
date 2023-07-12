import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../../../../reusable_widgets/app_bar/custom_appbar.dart';
import '../../../../reusable_widgets/bottom_nav_bar/reusable_botton_navbar.dart';
import '../../../../utils/colors/app_colors.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        isDark: false,
        centerTitle: false,
        needNotificationAction: true,
      ),
      body: SfCalendar(
        view: CalendarView.week,
        firstDayOfWeek: 1,
        todayHighlightColor: CColors.blueAccentTwo,
        selectionDecoration: BoxDecoration(
          border: Border.all(
            color: CColors.blueAccentTwo,
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(
        selectedIndex: 1,
      ),
    );
  }
}
