import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Color> colors = [
    Colors.deepPurple,
    Colors.teal,
    Colors.amber.shade800,
  ];

  final List<String> titles = [
    'Welcome',
    'Discover',
    'Enjoy',
  ];

  final List<String> subtitles = [
    'This is the first page of the PageView widget',
    'Explore new features and designs with us!',
    'Thank you for scrolling through these pages 🎉',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors[_currentPage],
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('PageView Example'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: titles.length,
              onPageChanged: (index) {
                setState(() => _currentPage = index);
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text(
                          titles[index],
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            subtitles[index],
                            style: const TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Dots Indicator
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(titles.length, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  height: 12,
                  width: _currentPage == index ? 24 : 12,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? Colors.white : Colors.white38,
                    borderRadius: BorderRadius.circular(6),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
