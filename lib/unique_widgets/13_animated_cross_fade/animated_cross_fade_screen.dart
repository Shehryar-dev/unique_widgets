import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeExample> createState() => _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedCrossFade Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: _buildCard(
                color: Colors.blueAccent,
                title: 'Flutter',
                subtitle: 'Beautiful native apps',
                icon: Icons.flutter_dash,
              ),
              secondChild: _buildCard(
                color: Colors.deepOrangeAccent,
                title: 'Riverpod',
                subtitle: 'Clean & scalable state',
                icon: Icons.sync_alt_rounded,
              ),
              crossFadeState: _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 600),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  _showFirst = !_showFirst;
                });
              },
              icon: const Icon(Icons.swap_horiz),
              label: const Text('Toggle View'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required Color color,
    required String title,
    required String subtitle,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 300,
      decoration: BoxDecoration(
        color: color.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, size: 40, color: Colors.white),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
              const SizedBox(height: 4),
              Text(subtitle, style: const TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
