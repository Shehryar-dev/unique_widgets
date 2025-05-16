import 'package:flutter/material.dart';

class BreadcrumbsExample extends StatelessWidget {
  const BreadcrumbsExample({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> paths = ['Home', 'Category', 'Product'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('🧭 Breadcrumb Navigation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: List.generate(paths.length * 2 - 1, (index) {
            if (index.isEven) {
              final pathIndex = index ~/ 2;
              return GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Navigated to ${paths[pathIndex]}')),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      pathIndex == 0 ? Icons.home : Icons.arrow_right,
                      size: 20,
                    ),
                    Text(
                      paths[pathIndex],
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: Icon(Icons.chevron_right, size: 20, color: Colors.grey),
              );
            }
          }),
        ),
      ),
    );
  }
}
