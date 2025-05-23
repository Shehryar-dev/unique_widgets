import 'package:flutter/material.dart';

class GridTileExample extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      "title": "Nike Shoes",
      "price": "\$120",
      "image": "https://i.imgur.com/2yaf2wb.png"
    },
    {
      "title": "Adidas Sneakers",
      "price": "\$98",
      "image": "https://i.imgur.com/L68FtMA.png"
    },
    {
      "title": "Puma Runner",
      "price": "\$89",
      "image": "https://i.imgur.com/ODkQn6B.png"
    },
    {
      "title": "Bored ape nft accidental",
      "price": "\$89",
      "image": "https://media4.giphy.com/media/1gbqIc1fK8QgR3bHL7/giphy.gif?cid=790b7611a2f696d51a46ce892e420e77735707466a4abd3b&rid=giphy.gif&ct=g"
    },
    {
      "title": "Bored ape nft accidental",
      "price": "\$89",
      "image": "https://cdn.vox-cdn.com/thumbor/ZkmdkuJUTLgJh96_FWQ5zweGGxo=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/23084330/bored_ape_nft_accidental_.jpg"
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Grid"), backgroundColor: Colors.indigo.shade900,),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 4,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return GridTile(
              footer: GridTileBar(
                backgroundColor: Colors.black87,
                title: Text(product['title']),
                subtitle: Text(product['price']),
                trailing: IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.white),
                  onPressed: () {},
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  product['image'],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
