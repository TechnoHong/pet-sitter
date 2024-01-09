import 'package:get/get.dart';
import 'package:petke/pages/home.dart';
import 'package:petke/pages/settings.dart';
import 'package:petke/pages/signIn.dart';
import 'package:petke/pages/signUp.dart';

class Routes {
  static String signInScreen = '/sign-in';
  static String signUpScreen = '/sign-up';
  static String mainScreen = '/main';
  static String settingsScreen = '/settings';
}

final getPages = [
  GetPage(
      name: Routes.signInScreen,
      page: () => const SignInPage(),
  ),
  GetPage(
      name: Routes.signUpScreen,
      page: () => const SignUpPage(),
  ),
  GetPage(
      name: Routes.mainScreen,
      page: () => const HomePage(),
  ),
  GetPage(
    name: Routes.settingsScreen,
    page: () => const SettingsPage(),
  ),
];