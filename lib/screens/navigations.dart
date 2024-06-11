
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neutrotech/screens/dashboard/MealScreen.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationCOntroller());
    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,

          onDestinationSelected: (index) =>
          controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.cabin), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.cabin_outlined), label: 'booking'),
            NavigationDestination(icon: Icon(Icons.cabin_outlined), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationCOntroller extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
     const MealScreen(),
    Container(
      color: Colors.orange,
    ),    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.blue,
    ),
  ];
}
