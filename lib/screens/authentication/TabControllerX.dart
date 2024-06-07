import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TabControllerX extends GetxController with SingleGetTickerProviderMixin {
  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
