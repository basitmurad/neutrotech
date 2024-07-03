import 'package:flutter/material.dart';

class ItemDesign extends StatelessWidget {
  final String title;
  final String subtitle;
  final AssetImage imagePath;

  const ItemDesign({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF173033),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: imagePath ,width: 80, height: 80,),
          SizedBox(height: 5,),
          Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold ,color: Color(0XFF89BA2D)) ),
          Text(subtitle, style: TextStyle(fontSize: 14, color: Color(0XFF89BA2D))),
        ],
      ),
    );
  }
}
