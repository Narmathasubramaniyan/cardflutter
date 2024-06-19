import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String imagePath;
  final String label;
  final String routeName;

  const CategoryCard({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0), // Add padding around each container
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15), // Rounded corners
          child: Container(
            height: 200,
            width:
                double.infinity, // Make the container take full width available
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    color: Colors.black54,
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        label,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
