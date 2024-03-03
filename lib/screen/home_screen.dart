import 'package:calendar_scheduler/component/main_calendar.dart';
import 'package:calendar_scheduler/component/schedule_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../component/today_banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.utc(
      DateTime.now().year, DateTime.now().month, DateTime.now().day);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          MainCalendar(
            selectedDate: selectedDate,
            onDaySelected: onDaySelected,
          ),
          SizedBox(
            height: 8,
          ),
          TodayBanner(
            selectedDate: selectedDate,
            count: 0,
          ),
          SizedBox(
            height: 8,
          ),
          ScheduleCard(startTime: 12, endTime: 14, content: '프로그래밍 공부')
        ],
      ),
    ));
  }

  void onDaySelected(DateTime selectedDate, DateTime focusedDate) {
    setState(() {
      this.selectedDate = selectedDate;
    });
  }
}
