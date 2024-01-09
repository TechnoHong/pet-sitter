import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:petke/controllers/sign_up_controller.dart';

import '../layout/petkeAppBar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final controller = Get.put(SignUpController());

    return Scaffold(
      appBar: PetkeAppBar(
        title: localizations.sign_up_title,
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
                SignUpController.instance.signUp(controller.email.text.trim(), controller.password.text.trim());
              }, child: Text(localizations.sign_up_title)),
          ],
        ),
      ),
    );
  }
}