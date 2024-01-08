import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../layout/petkeAppBar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: PetKeAppBar(
        title: localizations.sign_up_title,
        hasBack: true,
      ),
      body: Center(
        child: Text(localizations.app_title),
      ),
    );
  }
}