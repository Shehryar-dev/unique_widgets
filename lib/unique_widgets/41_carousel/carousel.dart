import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'assets/images/banners/banner_1.jpg',
      'assets/images/banners/banner_2.jpg',
      'assets/images/banners/banner_3.jpg',
      'assets/images/banners/banner_4.jpg',
      'assets/images/banners/banner_5.jpg',
      'assets/images/banners/banner_6.jpg',
      'assets/images/banners/banner_7.jpg',
      'assets/images/banners/banner_8.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('🎠 Carousel Slider'),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
            items: imageList.map((item) => ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(item, fit: BoxFit.cover),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0.4), Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      'Slide Banner',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            )).toList(),
          ),
        ],
      ),
    );
  }
}
