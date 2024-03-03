import 'package:calendar_scheduler/const/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:table_calendar/table_calendar.dart';

class MainCalendar extends StatelessWidget {
  final OnDaySelected onDaySelected;
  final DateTime selectedDate;

  const MainCalendar(
      {required this.onDaySelected, required this.selectedDate, super.key});

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      onDaySelected: onDaySelected,
      selectedDayPredicate: (date) =>
          date.year == selectedDate.year &&
          date.month == selectedDate.month &&
          date.day == selectedDate.day,
      firstDay: DateTime(1800, 1, 1),
      lastDay: DateTime(3000, 1, 1),
      focusedDay: DateTime.now(),
      headerStyle: HeaderStyle(
          titleCentered: true,
          formatButtonVisible: false,
          titleTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
      calendarStyle: CalendarStyle(
          isTodayHighlighted: false,
          defaultDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: LIGHT_GREY_COLOR),
          weekendDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: LIGHT_GREY_COLOR),
          selectedDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: PRIMARY_COLOR, width: 1)),
          defaultTextStyle:
              TextStyle(fontWeight: FontWeight.w600, color: DARK_GREY_COLOR),
          weekendTextStyle:
              TextStyle(fontWeight: FontWeight.w600, color: DARK_GREY_COLOR),
          selectedTextStyle:
              TextStyle(fontWeight: FontWeight.w600, color: PRIMARY_COLOR)),
    );
  }
}
