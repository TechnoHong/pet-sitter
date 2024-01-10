import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:petke/layout/petkeAppBar.dart';
import 'package:petke/repositories/auth_repository.dart';

import '../routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: PetkeAppBar(title: localizations.app_title,),
      body: Center(
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
                Get.toNamed(Routes.myPageScreen);
              },
              child: Text(localizations.my_page_title),
            ),
            TextButton(
              onPressed: () {
                AuthRepository.instance.signOut();
              },
              child: Text(localizations.sign_out_title),
            ),
          ],
        ),
      ),
    );
  }
}