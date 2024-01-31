import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:petke/controllers/nav_bar_controller.dart';
import 'package:petke/repositories/auth_repository.dart';
import 'package:petke/repositories/user_repository.dart';

import '../routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    Get.put(NavBarController());

    return Center(
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.settingsScreen);
            },
            child: Text(localizations.settings_title),
          ),
          TextButton(
            onPressed: () {
              AuthRepository.instance.signOut();
            },
            child: Text(UserRepository.instance.userProfile?.extraFlag.toString() ?? 'null'),
          ),
        ],
      ),
    );
  }
}