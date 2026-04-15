import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalenderSection extends StatefulWidget {
  const TableCalenderSection({super.key});

  @override
  State<TableCalenderSection> createState() => _TableCalenderSectionState();
}

class _TableCalenderSectionState extends State<TableCalenderSection> {
 
   DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;
  @override
  Widget build(BuildContext context) {
    return   TableCalendar(
                  //locale: 'ar',
                  headerStyle: const HeaderStyle(formatButtonVisible: false),
                  firstDay: DateTime.utc(1998, 1, 1),
                  lastDay: DateTime.utc(2026, 12, 31),
                  focusedDay: focusedDay,
                  selectedDayPredicate: (day) => isSameDay(selectedDay, day),
                  onDaySelected: (selected, focused) {
                    setState(() {
                      selectedDay = selected;
                      focusedDay = focused;
                    });
                  },
                  calendarStyle: CalendarStyle(),
                );
  }
}