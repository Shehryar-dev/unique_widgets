import '../../constants/screen_path.dart';


class HeroTransScreen extends StatelessWidget {
  const HeroTransScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero Transition Screen')),
      body: Center(
        child: Hero(
          tag: 'hero-tag',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/food.png',
              width: 350, // Bigger size for smooth transition effect
              height: 350,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
