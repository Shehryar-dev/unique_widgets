import 'package:flutter/material.dart';

class AnimatedTextIconExample extends StatefulWidget {
  const AnimatedTextIconExample({super.key});

  @override
  State<AnimatedTextIconExample> createState() => _AnimatedTextIconExampleState();
}

class _AnimatedTextIconExampleState extends State<AnimatedTextIconExample> with SingleTickerProviderStateMixin {
  bool _isToggled = false;
  late AnimationController _iconController;

  @override
  void initState() {
    super.initState();
    _iconController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _iconController.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() {
      _isToggled = !_isToggled;
      _isToggled ? _iconController.forward() : _iconController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Text & Icons")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 400),
              style: TextStyle(
                fontSize: _isToggled ? 32 : 20,
                fontWeight: _isToggled ? FontWeight.bold : FontWeight.normal,
                color: _isToggled ? Colors.teal : Colors.black87,
              ),
              child: const Text("Flutter Animation"),
            ),
            const SizedBox(height: 30),
            IconButton(
              onPressed: _toggle,
              iconSize: 60,
              icon: AnimatedIcon(
                icon: AnimatedIcons.menu_close,
                progress: _iconController,
              ),
            ),
            const Text("Tap Icon to Animate"),
          ],
        ),
      ),
    );
  }
}
