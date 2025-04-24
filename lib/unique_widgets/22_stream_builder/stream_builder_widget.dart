import 'dart:async';
import 'package:flutter/material.dart';

class StreamBuilderExample extends StatefulWidget {
  const StreamBuilderExample({super.key});

  @override
  State<StreamBuilderExample> createState() => _StreamBuilderExampleState();
}

class _StreamBuilderExampleState extends State<StreamBuilderExample> {
  final StreamController<int> _controller = StreamController<int>();
  int _counter = 0;

  void _startStream() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_counter >= 10) {
        _controller.close();
        timer.cancel();
      } else {
        _counter++;
        _controller.sink.add(_counter);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _startStream();
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StreamBuilder Example')),
      body: Center(
        child: StreamBuilder<int>(
          stream: _controller.stream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return const Text('Error in stream');
            } else if (snapshot.hasData) {
              return Text(
                'Counter: ${snapshot.data}',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              );
            } else {
              return const Text('Stream Closed');
            }
          },
        ),
      ),
    );
  }
}
