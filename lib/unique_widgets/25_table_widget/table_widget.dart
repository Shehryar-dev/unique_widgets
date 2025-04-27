import 'package:flutter/material.dart';

class TableWidgetExample extends StatelessWidget {
  const TableWidgetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table Widget Example'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(color: Colors.deepPurple),
          columnWidths: const {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(2),
            2: FlexColumnWidth(2),
          },
          children: [
            _buildTableHeader(),
            _buildTableRow('Shehryar', 'Developer', 'Flutter'),
            _buildTableRow('Ali', 'Designer', 'Figma'),
            _buildTableRow('Sara', 'Project Manager', 'Agile'),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableHeader() {
    return const TableRow(
      decoration: BoxDecoration(color: Colors.deepPurpleAccent),
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Name', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Role', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Skill', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }

  TableRow _buildTableRow(String name, String role, String skill) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(name),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(role),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(skill),
        ),
      ],
    );
  }
}
