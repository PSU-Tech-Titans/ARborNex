import 'package:flutter/material.dart';

import 'indoorGarden.dart';


class CategoryCard extends StatelessWidget {
  final String label;
  final String imagePath;

  CategoryCard({required this.label, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (label == 'Indoor Garden') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => IndoorGardenScreen()),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0), // Add padding around the entire card
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), // Apply border radius here
                child: Image.asset(
                  imagePath,
                  width: double.infinity, // Expanded to take all available width
                  height: double.infinity, // Expanded to take all available height
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10), // 10 units gap between the image and the label
            Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
