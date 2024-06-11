import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'TabControllerX.dart';


class TabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

    const TabBarWidget({super.key}) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabControllerX>(
      init: TabControllerX(),
      builder: (controller) {
        return TabBar(
          controller: controller.tabController,
          tabs: const [
            Tab(text: 'Login'),
            Tab(text: 'Register'),
          ],
        );
      },
    );
  }
}
