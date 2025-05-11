import 'package:flutter/material.dart';

class DropdownExample extends StatefulWidget {
  const DropdownExample({super.key});

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  final List<String> _programmingLanguages = [
    'Dart',
    'JavaScript',
    'Python',
    'C++',
    'Java',
  ];

  String? _selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('💡 Dropdown Example')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  'Select Your Favorite Language',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  value: _selectedLanguage,
                  hint: const Text('Choose a language'),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                  ),
                  items: _programmingLanguages
                      .map((lang) => DropdownMenuItem(
                    value: lang,
                    child: Text(lang),
                  ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value;
                    });
                  },
                ),
                const SizedBox(height: 20),
                Text(
                  _selectedLanguage == null
                      ? 'No language selected'
                      : 'You selected: $_selectedLanguage',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
