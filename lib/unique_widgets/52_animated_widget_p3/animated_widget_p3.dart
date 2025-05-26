import 'package:flutter/material.dart';

class AnimatedOpacityRotationExample extends StatefulWidget {
  const AnimatedOpacityRotationExample({super.key});

  @override
  State<AnimatedOpacityRotationExample> createState() => _AnimatedOpacityRotationExampleState();
}

class _AnimatedOpacityRotationExampleState extends State<AnimatedOpacityRotationExample> {
  double _opacity = 1.0;
  double _rotation = 0;

  void _toggleAnimation() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.0 : 1.0;
      _rotation += 1; // Rotates 360° per tap
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Opacity & Rotation Animation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(milliseconds: 600),
              child: AnimatedRotation(
                turns: _rotation,
                duration: const Duration(seconds: 1),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade200,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Icon(Icons.refresh_rounded, size: 50, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: _toggleAnimation,
              icon: const Icon(Icons.animation_outlined),
              label: const Text("Animate"),
            ),
          ],
        ),
      ),
    );
  }
}
