import 'dart:math';
import 'package:flutter/material.dart';

class RefreshIndicatorExample extends StatefulWidget {
  const RefreshIndicatorExample({Key? key}) : super(key: key);

  @override
  State<RefreshIndicatorExample> createState() => _RefreshIndicatorExampleState();
}

class _RefreshIndicatorExampleState extends State<RefreshIndicatorExample> {
  List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  Future<void> _refreshItems() async {
    await Future.delayed(const Duration(seconds: 2)); // fake network delay

    setState(() {
      // shuffle to simulate new data
      items.shuffle(Random());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Pull to Refresh List"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: RefreshIndicator(
        color: Colors.teal,
        onRefresh: _refreshItems,
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              elevation: 3,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                title: Text(
                  items[index],
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                trailing: const Icon(Icons.refresh),
              ),
            );
          },
        ),
      ),
    );
  }
}
