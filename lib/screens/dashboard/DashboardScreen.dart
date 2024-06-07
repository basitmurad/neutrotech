import 'package:flutter/material.dart';
import 'package:neutrotech/screens/dashboard/MealScreen.dart';
import 'package:neutrotech/screens/dashboard/SlidesScreen.dart';
import 'package:neutrotech/screens/dashboard/SnackScreen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFF13393F),
        appBar: AppBar(
          backgroundColor: Color(0xFF13393F),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text(
            "Our Menu",
            style: TextStyle(
              color: Color(0XFF89BA2D),
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.store),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: TabBar(
              tabs: [
                Tab(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    alignment: Alignment.center,
                    child: Text(
                      'Meals',
                      style: TextStyle(color: Color(0XFF89BA2D)),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    alignment: Alignment.center,
                    child: Text(
                      'Slides',
                      style: TextStyle(color: Color(0XFF89BA2D)),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    alignment: Alignment.center,
                    child: Text(
                      'Snack',
                      style: TextStyle(color: Color(0XFF89BA2D)),
                    ),
                  ),
                ),
              ],
              indicatorColor: Color(0XFF89BA2D),
            ),
          ),
        ),
        body: TabBarView(
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

