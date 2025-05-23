import 'package:flutter/material.dart';

class PaginationExample extends StatefulWidget {
  const PaginationExample({super.key});

  @override
  State<PaginationExample> createState() => _PaginationExampleState();
}

class _PaginationExampleState extends State<PaginationExample> {
  int currentPage = 1;
  final int itemsPerPage = 5;

  List<String> allItems = List.generate(50, (index) => 'Item ${index + 1}');

  List<String> get paginatedItems {
    final start = (currentPage - 1) * itemsPerPage;
    final end = (start + itemsPerPage).clamp(0, allItems.length);
    return allItems.sublist(start, end);
  }

  int get totalPages => (allItems.length / itemsPerPage).ceil();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📄 Paginated ListView'), backgroundColor: Colors.indigo.shade900,),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: paginatedItems.length,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemBuilder: (context, index) => Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    title: Text(paginatedItems[index]),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.grey.shade200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: currentPage > 1
                          ? () => setState(() => currentPage--)
                          : null,
                    ),
                    ...List.generate(
                      totalPages,
                          (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: (currentPage == index + 1)
                                ? Colors.blue
                                : Colors.grey,
                          ),
                          onPressed: () =>
                              setState(() => currentPage = index + 1),
                          child: Text('${index + 1}'),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward),
                      onPressed: currentPage < totalPages
                          ? () => setState(() => currentPage++)
                          : null,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
