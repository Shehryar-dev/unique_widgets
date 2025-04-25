import 'package:flutter/material.dart';

class SpacerWidgetExample extends StatelessWidget {
  const SpacerWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spacer Widget Example'), backgroundColor: Colors.indigo.shade900,),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Spacer Widget helps distribute empty space between children in a Row or Column.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                const Icon(Icons.star, size: 40, color: Colors.deepPurple),
                const Spacer(),
                const Icon(Icons.favorite, size: 40, color: Colors.pink),
                const Spacer(),
                const Icon(Icons.thumb_up, size: 40, color: Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
