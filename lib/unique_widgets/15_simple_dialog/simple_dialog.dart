// simple_dialog_example.dart
import 'package:flutter/material.dart';

class SimpleDialogExample extends StatelessWidget {
  const SimpleDialogExample({super.key});

  void _showOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => SimpleDialog(
        title: const Text('Choose an Option'),
        children: [
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context, 'Option 1'),
            child: const ListTile(
              leading: Icon(Icons.favorite, color: Colors.red),
              title: Text('Favourite'),
            ),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context, 'Option 2'),
            child: const ListTile(
              leading: Icon(Icons.share, color: Colors.blue),
              title: Text('Share'),
            ),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context),
            child: const ListTile(
              leading: Icon(Icons.close, color: Colors.grey),
              title: Text('Cancel'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SimpleDialog Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showOptionsDialog(context),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}
