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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                EmailCard(
                  controller: controller.email,
                  localizations: localizations,
                ),
                const SizedBox(height: 24.0,),
                AliasCard(
                    controller: controller.alias,
                    localizations: localizations
                ),
                const SizedBox(height: 24.0,),
                PasswordCard(
                  controller: controller.password,
                  localizations: localizations,
                ),
                const SizedBox(height: 24.0,),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FilledButton(
                    onPressed: () {
                      controller.signUp(
                        controller.email.text.trim(),
                        controller.password.text.trim(),
                        controller.alias.text.trim(),
                      );
                    },
                    child: Text(localizations.sign_up_title),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EmailCard extends StatelessWidget {
  const EmailCard({
    super.key,
    required this.controller,
    required this.localizations,
  });

  final TextEditingController controller;
  final AppLocalizations localizations;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: localizations.email_hint,
                ),
              ),
              const SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }
}

class AliasCard extends StatelessWidget {
  const AliasCard({
    super.key,
    required this.controller,
    required this.localizations,
  });

  final TextEditingController controller;
  final AppLocalizations localizations;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: localizations.alias,
                ),
              ),
              const SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }
}

class PasswordCard extends StatelessWidget {
  const PasswordCard({
    super.key,
    required this.controller,
    required this.localizations,
  });

  final TextEditingController controller;
  final AppLocalizations localizations;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: localizations.password_hint,
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: localizations.password_check,
                ),
              ),
              const SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }
}