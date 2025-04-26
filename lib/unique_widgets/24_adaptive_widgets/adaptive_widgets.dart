import 'package:flutter/material.dart';

class AdaptiveWidgetExample extends StatelessWidget {
  const AdaptiveWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adaptive Widgets Example'),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Adaptive Switch
            Switch.adaptive(
              value: true,
              onChanged: (bool value) {},
            ),
            const SizedBox(height: 20),

            // Adaptive CircularProgressIndicator
            const CircularProgressIndicator.adaptive(),

            const SizedBox(height: 20),

            // Adaptive Icon Button
            IconButton(
              icon:  Icon(Icons.adaptive.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
