import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petke/repositories/auth_repository.dart';

import '../routes.dart';

class PetkeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PetkeAppBar({Key? key, required this.title, this.hasBack = false}) : super(key: key);

  final String title;
  final bool hasBack;

  settingIconClick(){
    Get.toNamed(Routes.settingsScreen);
  }

  logOutIconClick(){
    AuthRepository.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: (() {
        if (hasBack == true) {
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back));
        }
      })(),
      title: Text(title),
      actions: [
        IconButton(onPressed: settingIconClick, icon: Icon(Icons.settings, size: 20,)),
        IconButton(onPressed: logOutIconClick, icon: Icon(Icons.logout, size: 20)),
        // child: Text(UserRepository.instance.userProfile?.extraFlag.toString() ?? 'null')),
      ],
      backgroundColor: Color.fromARGB(200, 193, 177, 160),
      foregroundColor: Color.fromARGB(255, 255, 214, 228),
      elevation: 10,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}