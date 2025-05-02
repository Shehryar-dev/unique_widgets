import 'package:flutter/material.dart';

class SpreadOperatorWidget extends StatelessWidget {
  const SpreadOperatorWidget({super.key});

  // A separate list of card widgets using spread operator
  List<Widget> get customCards => List.generate(
    5,
        (index) => Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(child: Text('${index + 1}')),
        title: Text('Card Title ${index + 1}'),
        subtitle: const Text('Generated using spread operator'),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spread Operator Example'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Using Spread Operator in Flutter',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ...customCards, // <- Spread operator adds multiple cards here!
        ],
      ),
    );
  }
}
