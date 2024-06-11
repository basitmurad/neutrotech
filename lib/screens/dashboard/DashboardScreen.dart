import 'package:flutter/material.dart';
import 'package:neutrotech/screens/dashboard/MealScreen.dart';
import 'package:neutrotech/screens/dashboard/SlidesScreen.dart';
import 'package:neutrotech/screens/dashboard/SnackScreen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFF13393F),
        appBar: AppBar(
          backgroundColor: const Color(0xFF13393F),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: const Text(
            "Our Menu",
            style: TextStyle(
              color: Color(0XFF89BA2D),
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.store),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: TabBar(
              tabs: [
                Tab(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    alignment: Alignment.center,
                    child: const Text(
                      'Meals',
                      style: TextStyle(color: Color(0XFF89BA2D)),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    alignment: Alignment.center,
                    child: const Text(
                      'Slides',
                      style: TextStyle(color: Color(0XFF89BA2D)),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    alignment: Alignment.center,
                    child: const Text(
                      'Snack',
                      style: TextStyle(color: Color(0XFF89BA2D)),
                    ),
                  ),
                ),
              ],
              indicatorColor: const Color(0XFF89BA2D),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            MealScreen(),
            SlidesScreen(),
            SnackScreen()

          ],
        ),
      ),
    );
  }
}

