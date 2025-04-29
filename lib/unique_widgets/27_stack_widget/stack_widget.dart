import 'package:flutter/material.dart';

class StackWidgetExample extends StatelessWidget {
  const StackWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget Example'),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.indigo[300],
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.indigo[500],
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white,
                child: const Text(
                  'Overlay',
                  style: TextStyle(color: Colors.indigo),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
