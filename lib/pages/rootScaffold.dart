import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:petke/controllers/nav_bar_controller.dart';
import 'package:petke/layout/petkeAppBar.dart';
import 'package:petke/layout/petkeNavBar.dart';
import 'package:petke/pages/chatList.dart';
import 'package:petke/pages/favorites.dart';
import 'package:petke/pages/home.dart';
import 'package:petke/pages/myPage.dart';
import 'package:petke/pages/newPosting.dart';

class RootScaffold extends StatelessWidget {
  const RootScaffold({super.key});

  static List<Widget> tabPages = <Widget>[
    const NewPostingPage(),
    const FavoritesPage(),
    const HomePage(),
    const ChatListPage(),
    const MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    Get.put(NavBarController());

    return Scaffold(
      appBar: PetkeAppBar(title: localizations.app_title,),
      body: Obx(() => SafeArea(child: tabPages[NavBarController.to.selectedIndex.value])),
      bottomNavigationBar: const PetkeNavBar(),
    );
  }
}