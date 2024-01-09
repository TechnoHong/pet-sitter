import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:petke/data/petke_options.dart';
import 'package:petke/layout/SingleSelector.dart';
import 'package:petke/layout/petkeAppBar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final options = PetkeOptions.of(context);

    return Scaffold(
      appBar: PetkeAppBar(
        title: localizations.settings_title,
        hasBack: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(localizations.settings_theme_title),
            SingleSelector<ThemeMode>(
              options: const <ButtonSegment<ThemeMode>>[
                ButtonSegment<ThemeMode>(
                  value: ThemeMode.light,
                  label: Text("light"),
                  icon: Icon(Icons.brightness_7),
                ),
                ButtonSegment<ThemeMode>(
                  value: ThemeMode.dark,
                  label: Text("dark"),
                  icon: Icon(Icons.brightness_2),
                ),
                ButtonSegment<ThemeMode>(
                  value: ThemeMode.system,
                  label: Text("system"),
                  icon: Icon(Icons.brightness_auto),
                ),
              ],
              selectedOption: options.themeMode,
              onOptionChanged: (newThemeMode) => PetkeOptions.update(context, options.copyWith(themeMode: newThemeMode)),
            ),
            
          ],
        ),
      ),
    );
  }
}