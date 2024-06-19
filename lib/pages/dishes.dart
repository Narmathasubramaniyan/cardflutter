import 'package:flutter/material.dart';
import 'package:gridview/widget/itemcard.dart'; // Assuming your ItemCard is in widget/item_card.dart

class Dishes extends StatelessWidget {
  Dishes({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> dishesList = [
    {
      'imagePath': 'lib/images/nonveg.jpg',
      'itemName': 'Dish 1',
      'price': 9.99,
      'description': 'A delightful non-vegetarian dish.',
    },
    {
      'imagePath': 'lib/images/65.jpg',
      'itemName': 'Dish 2',
      'price': 11.99,
      'description': 'A classic chicken 65 dish.',
    },
    {
      'imagePath': 'lib/images/gril.jpg',
      'itemName': 'Dish 3',
      'price': 13.99,
      'description': 'A grilled chicken dish with spices.',
    },
    {
      'imagePath': 'lib/images/biriyani.jpg',
      'itemName': 'Dish 4',
      'price': 16.99,
      'description': 'A flavorful biriyani dish.',
    },
    {
      'imagePath': 'lib/images/veg.jpg',
      'itemName': 'Dish 5',
      'price': 14.99,
      'description': 'A tasty vegetarian dish.',
    },
    {
      'imagePath': 'lib/images/dishes.jpg',
      'itemName': 'Dish 6',
      'price': 18.99,
      'description': 'A mix of different delicious dishes.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D I S H E S'),
        backgroundColor: Colors.grey[600],
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dishesList.length,
        itemBuilder: (context, index) {
          return ItemCard(
            imagePath: dishesList[index]['imagePath'],
            itemName: dishesList[index]['itemName'],
            price: dishesList[index]['price'],
            description: dishesList[index]['description'],
          );
        },
      ),
    );
  }
}
