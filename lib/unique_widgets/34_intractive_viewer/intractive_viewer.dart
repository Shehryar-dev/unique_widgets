import 'package:flutter/material.dart';

class InteractiveViewerExample extends StatelessWidget {
  const InteractiveViewerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🔍 Interactive Viewer'), backgroundColor: Colors.indigo.shade900,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(20),
          minScale: 0.5,
          maxScale: 3.0,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
              6,
                  (index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                elevation: 4,
                color: Colors.teal.shade100,
                margin: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                    'Item ${index + 1}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
