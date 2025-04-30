import 'package:flutter/material.dart';

class PositionedWidget extends StatefulWidget {
  const PositionedWidget({super.key});

  @override
  State<PositionedWidget> createState() => _PositionedWidgetState();
}

class _PositionedWidgetState extends State<PositionedWidget> {
  bool _isMoved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned Widget Example',),
        backgroundColor: Colors.indigo.shade900,
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.indigo[50],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              top: _isMoved ? 200 : 20,
              left: _isMoved ? 200 : 20,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isMoved = !_isMoved;
                  });
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration:  BoxDecoration(
                    color: Colors.indigo.shade900,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.play_arrow, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
