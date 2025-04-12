import 'package:flutter/material.dart';

void main() => runApp(Task15());

class Task15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DateTimePicker());
  }
}

class DateTimePicker extends StatefulWidget {
  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  String selectedDateTime = '';

  void pickDateTime() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (date != null) {
      TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );
      if (time != null) {
        setState(() {
          selectedDateTime = '${date.toLocal()} ${time.format(context)}';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDateTime.isEmpty
                  ? 'Select date & time'
                  : selectedDateTime,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: pickDateTime,
              child: Text('Pick Date & Time'),
            ),
          ],
        ),
      ),
    );
  }
}
