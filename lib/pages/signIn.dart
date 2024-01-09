import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:petke/controllers/sign_in_controller.dart';
import 'package:petke/routes.dart';

import '../layout/petkeAppBar.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final controller = Get.put(SignInController());

    return Scaffold(
      appBar: PetkeAppBar(
        title: localizations.sign_in_title,
        hasBack: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller.email,
              decoration: InputDecoration(
                hintText: localizations.email,
              ),
            ),
            TextField(
              controller: controller.password,
              obscureText: true,
              decoration: InputDecoration(
                hintText: localizations.password,
              ),
            ),
            FilledButton(
              onPressed: () {
                controller.signIn();
              },
              child: Text(localizations.sign_in_title),
            ),
            FilledButton(
              onPressed: () {
                Get.toNamed(Routes.signUpScreen);
              },
              child: Text(localizations.sign_up_with_email),
            ),
          ],
        ),
      ),
    );
  }
}