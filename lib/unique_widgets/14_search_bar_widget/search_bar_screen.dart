import 'package:flutter/material.dart';

class SearchBarExample extends StatefulWidget {
  const SearchBarExample({Key? key}) : super(key: key);

  @override
  State<SearchBarExample> createState() => _SearchBarExampleState();
}

class _SearchBarExampleState extends State<SearchBarExample> {
  final List<String> allItems = [
    'Apple', 'Banana', 'Grapes', 'Mango', 'Orange', 'Pineapple', 'Watermelon'
  ];

  String query = '';

  List<String> get filteredItems {
    if (query.isEmpty) return allItems;
    return allItems
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Bar Example'),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchBar(
              hintText: 'Search fruits...',
              onChanged: (value) {
                setState(() => query = value);
              },
              leading: const Icon(Icons.search),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: filteredItems.length,
                separatorBuilder: (_, __) => const Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredItems[index]),
                    leading: const Icon(Icons.local_grocery_store),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
