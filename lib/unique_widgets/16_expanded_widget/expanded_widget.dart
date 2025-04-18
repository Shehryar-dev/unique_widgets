import 'package:flutter/material.dart';

class ExpandedWidgetExample extends StatelessWidget {
  const ExpandedWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expanded Widget')),
      body: Column(
        children: [
          Container(height: 100, color: Colors.indigo.shade100),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.indigo,
              child: const Center(
                child: Text(
                  'Takes 2x Space',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.indigo.shade400,
              child: const Center(
                child: Text(
                  'Takes 1x Space',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          Container(height: 100, color: Colors.indigo.shade100),
        ],
      ),
    );
  }
}
