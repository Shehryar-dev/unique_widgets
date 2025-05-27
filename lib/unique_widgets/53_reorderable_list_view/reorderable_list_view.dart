import 'package:flutter/material.dart';

class ReorderableListViewExample extends StatefulWidget {
  const ReorderableListViewExample({super.key});

  @override
  State<ReorderableListViewExample> createState() => _ReorderableListViewExampleState();
}

class _ReorderableListViewExampleState extends State<ReorderableListViewExample> {
  List<String> tasks = [
    '📕 Study Flutter',
    '📧 Check Emails',
    '🎯 Practice LeetCode',
    '🛍️ Buy Groceries',
    '💤 Take a Nap',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reorder Tasks')),
      body: ReorderableListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        itemCount: tasks.length,
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (oldIndex < newIndex) newIndex--;
            final item = tasks.removeAt(oldIndex);
            tasks.insert(newIndex, item);
          });
        },
        itemBuilder: (context, index) {
          return Card(
            key: ValueKey(tasks[index]),
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: const Icon(Icons.drag_indicator),
              title: Text(tasks[index], style: const TextStyle(fontSize: 18)),
            ),
          );
        },
      ),
    );
  }
}
