
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double price;
  final bool isFavorite;

  const ProductCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.price,
    this.isFavorite = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.network(
                  imageUrl,
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: const TextStyle(color: Colors.green, fontSize: 14),
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
          Positioned(
            top: 10,
            right: 10,
            child: CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.9),
              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
