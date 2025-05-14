
import '../../constants/screen_path.dart';
import 'card_widget.dart';

class ProductCardExample extends StatelessWidget {
  const ProductCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🛍️ Product Card Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ProductCard(
          title: 'AirPods Pro 2',
          imageUrl: 'assets/images/food.png',
          price: 249.99,
          isFavorite: true,
        ),
      ),
    );
  }
}
