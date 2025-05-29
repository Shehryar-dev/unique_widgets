import 'package:flutter/material.dart';

class DismissibleExample extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => "Item ${index + 1}");

  DismissibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dismissible Example'), backgroundColor: Colors.indigo.shade900,),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Dismissible(
            key: Key(item),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            onDismissed: (direction) {
              // Typically remove item from database or list
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('$item dismissed')),
              );
            },
            child: Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: ListTile(
                leading: const Icon(Icons.label),
                title: Text(item),
                subtitle: const Text('Swipe to delete this item'),
              ),
            ),
          );
        },
      ),
    );
  }
}
