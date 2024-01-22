import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petke/controllers/nav_bar_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PetkeNavBar extends GetView<NavBarController> {
  const PetkeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Obx(() => BottomNavigationBar(
      currentIndex: controller.selectedIndex.value,
      onTap: controller.changeIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(Icons.note_add),
          label: localizations.navi_writing,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.favorite),
          label: localizations.navi_favorites,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: localizations.navi_home,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.chat),
          label: localizations.navi_chat,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.account_circle),
          label: localizations.navi_my,
        ),
      ],
    ));
  }
}