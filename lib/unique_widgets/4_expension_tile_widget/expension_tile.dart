import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpansionTile Widget'),
        backgroundColor: Colors.indigo.shade900,
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          CustomExpansionTile(
            title: 'Flutter',
            subtitle: 'Cross-platform UI toolkit',
            icon: Icons.flutter_dash,
            description:
            'Flutter is Google’s UI toolkit for building beautiful, natively compiled apps for mobile, web, and desktop.',
          ),
          CustomExpansionTile(
            title: 'Dart',
            subtitle: 'Programming Language',
            icon: Icons.code,
            description:
            'Dart is an open-source, scalable programming language, with robust libraries and runtimes for building web, server, and mobile apps.',
          ),
          CustomExpansionTile(
            title: 'Firebase',
            subtitle: 'Backend-as-a-Service',
            icon: Icons.cloud,
            description:
            'Firebase provides a set of cloud-based tools like authentication, database, analytics, and crash reporting.',
          ),
        ],
      ),
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final String description;

  const CustomExpansionTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(icon, color: Colors.indigo),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      children: [
        Text(
          description,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
