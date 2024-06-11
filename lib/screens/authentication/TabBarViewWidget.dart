import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'LoginTab.dart';
import 'RegisterTab.dart';
import 'TabControllerX.dart';


class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabControllerX>(
      builder: (controller) {
        return TabBarView(
          controller: controller.tabController,
          children: const [
            LoginTab(),
            RegisterTab(),
          ],
        );
      },
    );
  }
}
