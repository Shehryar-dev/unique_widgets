import '../../constants/screen_path.dart';

class HeroTransScreen extends StatelessWidget {
  const HeroTransScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
          tag: 'tag',
          child: Image(image: AssetImage('assets/images/food.png'),)),

    );
  }
}
