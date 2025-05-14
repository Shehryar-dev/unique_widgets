
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
          imageUrl: 'https://images.unsplash.com/photo-1606813902475-51f6b8e6497f',
          price: 249.99,
          isFavorite: true,
        ),
      ),
    );
  }
}
