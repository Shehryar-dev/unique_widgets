import 'package:flutter/material.dart';

class WrapWidgetExample extends StatelessWidget {
  const WrapWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> techList = [
      'Flutter',
      'Dart',
      'Riverpod',
      'Firebase',
      'REST API',
      'Bloc',
      'GetIt',
      'Provider',
      'MVC',
      'Clean Architecture',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: const Text('Wrap Widget Example'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Wrap(
          spacing: 12,
          runSpacing: 12,
          children: techList.map((tech) {
            return Chip(
              label: Text(tech),
              backgroundColor: Colors.blue.shade100,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              avatar: const Icon(Icons.code, size: 18),
            );
          }).toList(),
        ),
      ),
    );
  }
}
