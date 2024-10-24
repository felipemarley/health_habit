import 'package:flutter/material.dart';

class HorizontalDatePicker extends StatefulWidget {
  HorizontalDatePicker({super.key});

  @override
  State<HorizontalDatePicker> createState() => _HorizontalDatePickerState();
}

class _HorizontalDatePickerState extends State<HorizontalDatePicker> {
  int _selectedIndex = 3;

  void _onDateSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(7, (index) {
        return Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4), // Add horizontal margin
            child: DateItem(
              durationToAdd: index - 3,
              selected: _selectedIndex == index,
              onSelect: () => _onDateSelected(index),
            ),
          ),
        );
      }),
    );
  }
}

class DateItem extends StatefulWidget {
  final int durationToAdd;
  final bool selected;
  final VoidCallback onSelect;  // Callback for tap

  DateItem({super.key, required this.durationToAdd, required this.selected, required this.onSelect});

  @override
  State<DateItem> createState() => _DateItemState();
}

class _DateItemState extends State<DateItem> {
  String getWeekdayName(DateTime dateTime) {
    List<String> weekdays = [
      'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'
    ];
    return weekdays[dateTime.weekday - 1];  // weekday is 1-based index, array is 0-based
  }

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now().add(Duration(days: widget.durationToAdd));

    return GestureDetector(
      onTap: widget.onSelect,
      child: Container(
        color: widget.selected ? Colors.red : Colors.grey,
        padding: EdgeInsets.all(8), // Added some padding
        child: Column(
          children: [
            Text(getWeekdayName(date)),  // Pass computed date
            Text(date.day.toString()),  // Display the day of the month
          ],
        ),
      ),
    );
  }
}
