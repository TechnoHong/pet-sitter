import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PetKeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PetKeAppBar({Key? key, required this.title, this.hasBack = false}) : super(key: key);

  final String title;
  final bool hasBack;

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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}