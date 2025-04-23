import 'package:flutter/material.dart';

class TooltipWidgetExample extends StatelessWidget {
  const TooltipWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tooltip Widget Example'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Tooltip(
          message: 'This is a camera icon',
          decoration: BoxDecoration(
            color: Colors.indigo.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          child: IconButton(
            icon: const Icon(Icons.camera_alt, size: 40, color: Colors.indigo),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Camera Icon Pressed!')),
              );
            },
          ),
        ),
      ),
    );
  }
}
