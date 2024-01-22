import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:petke/controllers/sign_in_controller.dart';
import 'package:petke/routes.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final controller = Get.put(SignInController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Image.asset('assets/images/logo.png'),
                  const SizedBox(height: 10),
                  TextField(
                    controller: controller.email,
                    decoration: InputDecoration(
                      hintText: localizations.email,
                      contentPadding: const EdgeInsets.all(8),
                      constraints: const BoxConstraints(
                        maxWidth: 600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: controller.password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: localizations.password,
                      contentPadding: const EdgeInsets.all(8),
                      constraints: const BoxConstraints(
                        maxWidth: 600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FilledButton(
                    onPressed: () {
                      SignInController.instance.signIn();
                    },
                    child: Text(localizations.sign_in_title),
                  ),
                  const SizedBox(height: 5),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.signUpScreen);
                    },
                    child: Text(localizations.sign_up_with_email),
                  ),
                  TextButton(
                    onPressed: () {
                      SignInController.instance.signInWithGoogle();
                    },
                    child: Text(localizations.sign_up_with_google),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}