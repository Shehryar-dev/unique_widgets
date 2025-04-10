

import '../../constants/screen_path.dart';

class PopupMenuScreen extends StatefulWidget {
  const PopupMenuScreen({super.key});

  @override
  State<PopupMenuScreen> createState() => _PopupMenuScreenState();
}

class _PopupMenuScreenState extends State<PopupMenuScreen> {
  String _selected = 'None';

  void _handleSelection(String value) {
    setState(() {
      _selected = value;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('You selected: $value')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Popup Menu Example')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomPopupMenu(onSelected: _handleSelection),
            const SizedBox(height: 20),
            Text('Selected: $_selected', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

