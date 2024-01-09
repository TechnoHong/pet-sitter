import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:petke/layout/petkeAppBar.dart';

import '../layout/adaptive.dart';
import '../routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayDesktop(context);
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: PetkeAppBar(title: localizations.app_title,),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.signInScreen);
                },
              child: Text(localizations.sign_in_title),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.signUpScreen);
              },
              child: Text(localizations.sign_up_title),
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(Routes.settingsScreen);
                },
                child: Text(localizations.settings_title),
            ),
          ],
        ),
      ),
    );
  }
}