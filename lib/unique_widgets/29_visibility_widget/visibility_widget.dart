import 'package:flutter/material.dart';

class VisibilityWidgetExample extends StatefulWidget {
  const VisibilityWidgetExample({super.key});

  @override
  State<VisibilityWidgetExample> createState() => _VisibilityWidgetExampleState();
}

class _VisibilityWidgetExampleState extends State<VisibilityWidgetExample> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visibility Widget Example'),
        backgroundColor: Colors.indigo.shade900,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SwitchListTile(
              title: const Text('Show/Hide Card'),
              value: _isVisible,
              activeColor: Colors.indigo,
              onChanged: (value) {
                setState(() {
                  _isVisible = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Visibility(
              visible: _isVisible,
              replacement: const Text(
                'The card is hidden!',
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
              child: Card(
                elevation: 6,
                color: Colors.indigoAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Text(
                    'This is a visible card.',
                    style: TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
