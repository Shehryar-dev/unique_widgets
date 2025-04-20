import 'package:flutter/material.dart';

class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key});

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  DateTime? selectedDate;

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      barrierColor: Colors.indigo.shade900,
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Date Picker Example'), backgroundColor: Colors.indigo.shade900,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDate != null
                  ? 'Selected Date: ${selectedDate!.toLocal()}'.split(' ')[0]
                  : 'No date selected',
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.indigo.shade900)),
              onPressed: _pickDate,
              icon: const Icon(Icons.date_range),
              label: const Text('Pick a Date'),
            ),
          ],
        ),
      ),
    );
  }
}
