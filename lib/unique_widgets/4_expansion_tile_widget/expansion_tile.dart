
import '../../constants/screen_path.dart';

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
