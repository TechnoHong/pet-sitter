import 'package:get/get.dart';

class NavBarController extends GetxController {
  static NavBarController get to => Get.find();

  final RxInt selectedIndex = 2.obs;

  void changeIndex(int index) {
    selectedIndex(index);
  }
}