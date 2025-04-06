
import '../../../constants/screen_path.dart';

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
