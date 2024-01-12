import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petke/controllers/nav_bar_controller.dart';

class PetkeNavBar extends GetView<NavBarController> {
  const PetkeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
      currentIndex: controller.selectedIndex.value,
      onTap: controller.changeIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: controller.selectedIndex.value == 0 ? const Icon(Icons.man) : const Icon(Icons.woman),
          label: 'tab0',
        ),
        BottomNavigationBarItem(
          icon: controller.selectedIndex.value == 1 ? const Icon(Icons.man) : const Icon(Icons.woman),
          label: 'tab1',
        ),
        BottomNavigationBarItem(
          icon: controller.selectedIndex.value == 2 ? const Icon(Icons.man) : const Icon(Icons.woman),
          label: 'tab2',
        ),
        BottomNavigationBarItem(
          icon: controller.selectedIndex.value == 3 ? const Icon(Icons.man) : const Icon(Icons.woman),
          label: 'tab3',
        ),
        BottomNavigationBarItem(
          icon: controller.selectedIndex.value == 4 ? const Icon(Icons.man) : const Icon(Icons.woman),
          label: 'tab4',
        ),
      ],
    ));
  }
}