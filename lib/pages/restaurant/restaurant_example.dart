import 'package:flutter/material.dart';
import 'package:flutter_example/_models/restaurant_model.dart';
import 'product_item.dart';

class RestaurantData {
  final String title;
  final String subtitle;
  final String description;
  final String image;
  final List<String> categories;

  RestaurantData(
      {required this.title,
      required this.subtitle,
      required this.description,
      required this.image,
      required this.categories});
}

final restaurantData = RestaurantData(
    title: 'Ristorante Pizzeria da Pippo',
    subtitle: 'Benvenuto nel nostro Ristorante Pizzeria!',
    description:
        'Troverai un vasto assortimento di cibi preparatio in grado di soddisfare i palati di tutti i nostri clienti.',
    image: 'https://media-cdn.tripadvisor.com/media/photo-s/1b/bb/a9/b6/ristorante-da-pippo.jpg',
    categories: ['Pasta', 'Pizza', 'Bibite', 'Dolci']);

class RestaurantExample extends StatelessWidget {
  const RestaurantExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Center(
            child: Text(restaurantData.title,
                style: const TextStyle(color: Colors.white, fontSize: 14))),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Text(restaurantData.subtitle,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
          ),
          const SizedBox(height: 10),
          Image.network(restaurantData.image),
          Text(restaurantData.description),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...restaurantData.categories.map((category) => Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: ElevatedButton(onPressed: null, child: Text(category)),
              ))
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
              height: products.length * 100,
              child: ListView.separated(
                itemCount: products.length,
                itemBuilder: (context, index) => ProductItem(
                  product: products[index],
                ),
                separatorBuilder: (context, index) => const Divider(),
              ))
        ]),
      ),
    );
  }
}
