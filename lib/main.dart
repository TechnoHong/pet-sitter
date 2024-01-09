import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:petke/constants.dart';
import 'package:petke/data/petke_options.dart';
import 'package:petke/routes.dart';
import 'package:petke/themes/petke_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ModelBinding(
      initialModel: const PetkeOptions(
        themeMode: ThemeMode.system,
        textScaleFactor: systemTextScaleFactorOption,
      ),
      child: Builder(
        builder: (context) {
          final options = PetkeOptions.of(context);
          return GetMaterialApp(
            title: 'PETKE',
            themeMode: options.themeMode,
            theme: PetkeThemeData.lightThemeData,
            darkTheme: PetkeThemeData.darkThemeData,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            initialRoute: Routes.mainScreen,
            getPages: getPages,
          );
        },
      )
    );
  }
}