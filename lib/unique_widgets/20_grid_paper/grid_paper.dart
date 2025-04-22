import 'package:flutter/material.dart';

class GridPaperExample extends StatelessWidget {
  const GridPaperExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridPaper Widget'),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: Stack(
        children: [
          const GridPaper(
            color: Colors.grey,
            divisions: 2,
            interval: 100,
            subdivisions: 5,
          ),
          Center(
            child: Container(
              width: 300,
              height: 200,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    spreadRadius: 4,
                  )
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.layers, size: 40, color: Colors.indigo),
                  SizedBox(height: 10),
                  Text(
                    'GridPaper Demo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'This layout uses GridPaper widget for visual spacing guidance.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
