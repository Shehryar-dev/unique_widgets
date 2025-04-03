
import '../../constants/screen_path.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Widget'),
        centerTitle: true,
      ),
      
      body: ClipRRect(
        child: Hero(
            tag: 'tag',
            child: Image(image: AssetImage('assets/images/food.png'),width: 200,)),
      ),


    );
  }
}
