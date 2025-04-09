import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({super.key});

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues _currentRange = const RangeValues(20, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🎯 RangeSlider Widget'),
        backgroundColor: Colors.indigo.shade800,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Select Value Range",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),

            // RangeSlider
            RangeSlider(
              values: _currentRange,
              min: 0,
              max: 100,
              divisions: 20,
              activeColor: Colors.indigo,
              inactiveColor: Colors.grey.shade300,
              labels: RangeLabels(
                _currentRange.start.round().toString(),
                _currentRange.end.round().toString(),
              ),
              onChanged: (RangeValues newRange) {
                setState(() {
                  _currentRange = newRange;
                });
              },
            ),
            const SizedBox(height: 30),

            // Display values
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.indigo.shade200),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Start: ${_currentRange.start.toStringAsFixed(1)}"),
                  Text("End: ${_currentRange.end.toStringAsFixed(1)}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
