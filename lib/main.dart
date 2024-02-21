import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const description =
        'Troverai un vasto assortimento di cibi preparatio in grado di soddisfare i palati di tutti i nostri clienti.';
    final products = [
      Product(
          name: 'Matriciana',
          description:
              'Generica descrizione del piatto di pasta o di pizza presente nel menu di questo Ristorante Pizzeria da Pippo',
          price: 7.00),
      Product(
          name: 'Carbonara',
          description:
              'Generica descrizione del piatto di pasta o di pizza presente nel menu di questo Ristorante Pizzeria da Pippo',
          price: 8.50),
      Product(
          name: 'Margherita',
          description:
              'Generica descrizione del piatto di pasta o di pizza presente nel menu di questo Ristorante Pizzeria da Pippo',
          price: 6.50),
      Product(
          name: 'Capricciosa',
          description:
              'Generica descrizione del piatto di pasta o di pizza presente nel menu di questo Ristorante Pizzeria da Pippo',
          price: 7.00),
      Product(
          name: 'Bufala',
          description:
              'Generica descrizione del piatto di pasta o di pizza presente nel menu di questo Ristorante Pizzeria da Pippo',
          price: 10.50),
      Product(
          name: 'Pistacchiosa',
          description:
              'Generica descrizione del piatto di pasta o di pizza presente nel menu di questo Ristorante Pizzeria da Pippo',
          price: 12.00),
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[600],
            title: const Center(
                child: Text('Ristorante Pizzeria da Pippo!',
                    style: TextStyle(color: Colors.white, fontSize: 14))),
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              const Center(
                child: Text('Benvenuto nel nostro Ristorante Pizzeria!',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
              ),
              Image.network(
                  'https://media-cdn.tripadvisor.com/media/photo-s/1b/bb/a9/b6/ristorante-da-pippo.jpg'),
              const Text(description),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child:
                        ElevatedButton(onPressed: null, child: Text('Pasta')),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child:
                        ElevatedButton(onPressed: null, child: Text('Pizza')),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child:
                        ElevatedButton(onPressed: null, child: Text('Bibite')),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child:
                        ElevatedButton(onPressed: null, child: Text('Dolci')),
                  ),
                ],
              ),
              ...products.map((product) => ProductItem(product: product)),
            ]),
          )),
    );
  }
}

class Product {
  final String name;
  final String description;
  final double price;

  Product({required this.name, required this.description, required this.price});
}

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name,
              style: const TextStyle(fontSize: 24),
            ),
            Text(product.description),
          ],
        )),
        Text('${product.price.toStringAsFixed(2)}€',
            style: const TextStyle(fontSize: 16)),
      ]),
    ));
  }
}
