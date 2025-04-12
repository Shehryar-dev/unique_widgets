import '../../../constants/screen_path.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('🏠 Home Page', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
    );
  }
}