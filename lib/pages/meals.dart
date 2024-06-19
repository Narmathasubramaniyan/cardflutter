import 'package:flutter/material.dart';
import 'package:gridview/widget/itemcard.dart'; // Assuming your ItemCard is in widget/item_card.dart

class Meals extends StatelessWidget {
  Meals({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> mealsList = [
    {
      'imagePath': 'lib/images/veg.jpg',
      'itemName': 'Meal 1',
      'price': 10.99,
      'description': 'A delicious vegetarian meal.',
    },
    {
      'imagePath': 'lib/images/veg.jpg',
      'itemName': 'Meal 2',
      'price': 12.99,
      'description': 'A tasty and healthy meal.',
    },
    {
      'imagePath': 'lib/images/veg.jpg',
      'itemName': 'Meal 3',
      'price': 8.99,
      'description': 'A sumptuous vegetarian meal.',
    },
    {
      'imagePath': 'lib/images/veg.jpg',
      'itemName': 'Meal 4',
      'price': 14.99,
      'description': 'A delightful vegetarian meal.',
    },
    {
      'imagePath': 'lib/images/veg.jpg',
      'itemName': 'Meal 5',
      'price': 14.99,
      'description': 'A nutritious vegetarian meal.',
    },
    {
      'imagePath': 'lib/images/veg.jpg',
      'itemName': 'Meal 6',
      'price': 23.00,
      'description': 'A hearty vegetarian meal.',
    },
    {
      'imagePath': 'lib/images/veg.jpg',
      'itemName': 'Meal 7',
      'price': 12.00,
      'description': 'A mouth-watering vegetarian meal.',
    },
    {
      'imagePath': 'lib/images/veg.jpg',
      'itemName': 'Meal 8',
      'price': 34.00,
      'description': 'An exquisite vegetarian meal.',
    },
    {
      'imagePath': 'lib/images/veg.jpg',
      'itemName': 'Meal 9',
      'price': 14.99,
      'description': 'A savory vegetarian meal.',
    },
    {
      'imagePath': 'lib/images/veg.jpg',
      'itemName': 'Meal 10',
      'price': 14.99,
      'description': 'A flavorful vegetarian meal.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('M E A L S'),
        backgroundColor: Colors.grey[600],
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: mealsList.length,
        itemBuilder: (context, index) {
          return ItemCard(
            imagePath: mealsList[index]['imagePath'],
            itemName: mealsList[index]['itemName'],
            price: mealsList[index]['price'],
            description: mealsList[index]['description'],
          );
        },
      ),
    );
  }
}
