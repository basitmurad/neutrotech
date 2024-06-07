
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neutrotech/screens/authentication/LoginTab.dart';
import 'package:neutrotech/screens/authentication/RegisterTab.dart';

class AuthenticationScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AuthenticationScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF13393F),
      appBar: AppBar(
        backgroundColor: Color(0xFF13393F),

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  alignment: Alignment.center,
                  child: Text('Home' ,style: TextStyle(color: Color(0XFF89BA2D)),),
                ),
              ),
              Tab(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  alignment: Alignment.center,
                  child: Text('Profile' ,style: TextStyle(color: Color(0XFF89BA2D),),)
                ),
              ),
            ],
            indicatorColor: Color(0XFF89BA2D)
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: RegisterTab()),
          Center(child: LoginTab()                                                                                                              ),
        ],
      ),
    );
  }

}