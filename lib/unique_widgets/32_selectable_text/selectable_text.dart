import 'package:flutter/material.dart';

class SelectableTextExample extends StatelessWidget {
  const SelectableTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: const Text('Flutter Article Reader', style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Flutter 3.0 is Here!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 12),
            SelectableText.rich(
              TextSpan(
                text: 'Flutter 3.0 ',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
                children: [
                  const TextSpan(
                    text:
                    'brings multi-platform improvements, Material 3 design support, '
                        'performance upgrades, and new widgets like ',
                  ),
                  TextSpan(
                    text: 'SelectableText',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  const TextSpan(
                    text: '.\n\nYou can now copy, select, and interact with text elements like in real apps.',
                  ),
                ],
              ),
              textAlign: TextAlign.justify,
              selectionControls: materialTextSelectionControls,
            ),
            const SizedBox(height: 20),
            const Text(
              '🔍 Tip:',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SelectableText(
              'Try long-pressing or dragging across the text above to select and copy!',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
