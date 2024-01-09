import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../layout/petkeAppBar.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: PetkeAppBar(
        title: localizations.sign_in_title,
        hasBack: true,
      ),
      body: Center(
        child: Text(localizations.app_title),
      ),
    );
  }
}