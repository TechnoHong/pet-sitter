import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../layout/adaptive.dart';

class ToggleSplashNotification extends Notification {}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayDesktop(context);
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      body: Center(
        child: Text(localizations.app_title),
      ),
    );
  }
}