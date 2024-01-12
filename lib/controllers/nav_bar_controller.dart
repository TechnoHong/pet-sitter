import 'package:get/get.dart';

class NavBarController extends GetxController {
  static NavBarController get to => Get.find();

  final RxInt selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex(index);
  }
}