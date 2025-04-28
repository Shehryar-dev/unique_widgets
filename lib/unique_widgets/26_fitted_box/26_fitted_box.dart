import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FittedBox Widget Example'),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: Center(
        child: Container(
          color: Colors.blueAccent.shade400,
          height: 200,
          width: 200,
          child: const FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'FittedBox Text',
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
