import 'package:flutter/material.dart';
import 'package:gridview/widget/category_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('C A T E G O R Y'),
        backgroundColor: Colors.grey[600],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CategoryCard(
              imagePath: 'lib/images/veg.jpg',
              label: 'M E A L S',
              routeName: '/mealspage',
            ),
            CategoryCard(
              imagePath: 'lib/images/biriyani.jpg',
              label: 'B I R I Y A N I',
              routeName: '/biriyani',
            ),
            CategoryCard(
              imagePath: 'lib/images/dishes.jpg',
              label: 'D I S H E S',
              routeName: '/dishespage',
            ),
          ],
        ),
      ),
    );
  }
}
