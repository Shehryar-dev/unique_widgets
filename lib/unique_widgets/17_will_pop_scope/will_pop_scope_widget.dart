import 'package:flutter/material.dart';

class WillPopScopeExample extends StatelessWidget {
  const WillPopScopeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WillPopHandler(),
    );
  }
}

class WillPopHandler extends StatefulWidget {
  const WillPopHandler({super.key});

  @override
  State<WillPopHandler> createState() => _WillPopHandlerState();
}

class _WillPopHandlerState extends State<WillPopHandler> {
  Future<bool> _onWillPop() async {
    bool? exitConfirmed = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Exit App?'),
        content: const Text('Do you really want to exit?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Yes'),
          ),
        ],
      ),
    );
    return exitConfirmed ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WillPopScope Example',),
          backgroundColor: Colors.indigo.shade900,
        ),
        body: const Center(
          child: Text(
            'Press back button to see the confirmation dialog.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
