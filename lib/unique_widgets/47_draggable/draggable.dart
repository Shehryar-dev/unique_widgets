import 'package:flutter/material.dart';

class DraggableExample extends StatefulWidget {
  const DraggableExample({super.key});

  @override
  State<DraggableExample> createState() => _DraggableExampleState();
}

class _DraggableExampleState extends State<DraggableExample> {
  Color caughtColor = Colors.grey.shade300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🎯 Draggable Example')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Drag the color box to target area 👇',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Draggable<Color>(
              data: Colors.blue,
              feedback: Container(
                height: 100,
                width: 100,
                color: Colors.blue.withOpacity(0.7),
                child: const Icon(Icons.drag_indicator, color: Colors.white, size: 40),
              ),
              childWhenDragging: Container(
                height: 100,
                width: 100,
                color: Colors.grey.shade300,
                child: const Center(child: Text('Dragging...')),
              ),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: const Center(child: Text('Drag me', style: TextStyle(color: Colors.white))),
              ),
            ),
            const SizedBox(height: 40),
            DragTarget<Color>(
              onAccept: (color) {
                setState(() {
                  caughtColor = color;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: caughtColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: const Center(
                    child: Text(
                      'Drop here',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
