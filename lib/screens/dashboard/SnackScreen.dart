import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neutrotech/screens/dashboard/widgets/ItemDesign.dart';

class SnackScreen extends StatelessWidget {
  const SnackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {'title': 'Karahi', 'subtitle': 'Rs. 100', 'icon': AssetImage("assets/img.png")},
      {'title': 'Chicken pasta', 'subtitle': 'Rs. 100', 'icon': AssetImage("assets/image1.png")},
      {'title': 'Mixed Salad', 'subtitle': 'Rs. 100', 'icon': AssetImage("assets/image2.png")},
      {'title': 'Mixed Salad', 'subtitle': 'Rs. 100', 'icon': AssetImage("assets/image3.png")},
      {'title': 'chowinen', 'subtitle': 'Rs. 100', 'icon': AssetImage("assets/image4.png")},
      {'title': 'white karahi', 'subtitle': 'Rs. 100', 'icon': AssetImage("assets/image5.png")},
    ];
    return Scaffold(
      backgroundColor: const Color(0xFF13393F),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ItemDesign(
                    title: item['title'],
                    subtitle: item['subtitle'],
                    imagePath: item['icon'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
