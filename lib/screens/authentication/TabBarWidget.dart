import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'TabControllerX.dart';


class TabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

    TabBarWidget({Key? key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabControllerX>(
      init: TabControllerX(),
      builder: (controller) {
        return TabBar(
          controller: controller.tabController,
          tabs: [
            Tab(text: 'Login'),
            Tab(text: 'Register'),
          ],
        );
      },
    );
  }
}
