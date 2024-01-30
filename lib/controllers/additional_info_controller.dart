import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdditionalInfoController extends GetxController {
  static AdditionalInfoController get to => Get.find();
  RxInt pageIndex = 0.obs;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void changePageIndex(int index) {
    pageIndex(index);
  }

  Future<bool> onWillPop() async {
    return !await navigatorKey.currentState!.maybePop();
  }

  void back() {
    onWillPop();
  }
}