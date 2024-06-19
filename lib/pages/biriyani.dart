import 'package:flutter/material.dart';
import 'package:gridview/widget/itemcard.dart'; // Assuming your ItemCard is in widget/item_card.dart

class Biriyani extends StatelessWidget {
  Biriyani({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> biriyaniList = [
    {
      'imagePath': 'lib/images/biriyani.jpg',
      'itemName': 'Biriyani 1',
      'price': 15.99,
      'description': 'A flavorful biriyani with rich spices.',
    },
    {
      'imagePath': 'lib/images/65.jpg',
      'itemName': 'Biriyani 2',
      'price': 12.99,
      'description': 'A classic chicken 65 biriyani.',
    },
    {
      'imagePath': 'lib/images/biriyani.jpg',
      'itemName': 'Biriyani 3',
      'price': 14.99,
      'description': 'A mouth-watering biriyani with tender meat.',
    },
    {
      'imagePath': 'lib/images/65.jpg',
      'itemName': 'Biriyani 4',
      'price': 18.99,
      'description': 'A spicy and tangy chicken 65 biriyani.',
    },
    {
      'imagePath': 'lib/images/nonveg.jpg',
      'itemName': 'Biriyani 5',
      'price': 14.99,
      'description': 'A delicious non-vegetarian biriyani.',
    },
    {
      'imagePath': 'lib/images/biriyani.jpg',
      'itemName': 'Biriyani 6',
      'price': 16.99,
      'description': 'A delightful biriyani with a mix of flavors.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('B I R I Y A N I'),
        backgroundColor: Colors.grey[600],
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: biriyaniList.length,
        itemBuilder: (context, index) {
          return ItemCard(
            imagePath: biriyaniList[index]['imagePath'],
            itemName: biriyaniList[index]['itemName'],
            price: biriyaniList[index]['price'],
            description: biriyaniList[index]['description'],
          );
        },
      ),
    );
  }
}
