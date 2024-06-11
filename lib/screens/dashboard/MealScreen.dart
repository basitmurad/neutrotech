import 'package:flutter/material.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF13393F),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Column(
          children: [

ItemDesign()
          ],
        ),
      ),
    );
  }
}

class ItemDesign extends StatelessWidget {
  const ItemDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF173033)),
          borderRadius: BorderRadius.circular(10)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              "assets/logo.png",
            ),
            width: 69,
            height: 69,
          ),
          Text(
            "White karahi ",
            style: TextStyle(color: Color(0xFF89BA2D), fontSize: 16),
          ),
          Text(
            "100 ",
            style: TextStyle(
                color: Color(0xFF89BA2D),
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
