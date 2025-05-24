import 'package:flutter/material.dart';

class AnimatedWidgetExample extends StatefulWidget {
  const AnimatedWidgetExample({Key? key}) : super(key: key);

  @override
  State<AnimatedWidgetExample> createState() => _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample> {
  bool isExpanded = false;
  bool showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedContainer & CrossFade"), backgroundColor: Colors.indigo.shade900, ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() => isExpanded = !isExpanded);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                height: isExpanded ? 200 : 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: isExpanded ? Colors.blue : Colors.deepPurple,
                  borderRadius: BorderRadius.circular(isExpanded ? 20 : 8),
                ),
                alignment: Alignment.center,
                child: Text(
                  isExpanded ? "Tap to Collapse" : "Tap to Expand",
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.indigo.shade900)),
              onPressed: () => setState(() => showFirst = !showFirst),
              icon: const Icon(Icons.flip),
              label: const Text("Toggle View"),
            ),
            const SizedBox(height: 10),
            AnimatedCrossFade(
              firstChild: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.teal[100],
                child: const Text("🌟 This is the First View"),
              ),
              secondChild: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.amber[200],
                child: const Text("🚀 This is the Second View"),
              ),
              crossFadeState: showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 600),
            ),
          ],
        ),
      ),
    );
  }
}
