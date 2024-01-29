import 'package:get/get.dart';
import 'package:petke/pages/initialProgress.dart';
import 'package:petke/pages/myPage.dart';
import 'package:petke/pages/rootScaffold.dart';
import 'package:petke/pages/settings.dart';
import 'package:petke/pages/signIn.dart';
import 'package:petke/pages/signUp.dart';
import 'package:petke/pages/signUpAdditional.dart';

class Routes {
  static String signInScreen = '/sign-in';
  static String signUpScreen = '/sign-up';
  static String additionalInfoScreen = '/additional';
  static String mainScreen = '/main';
  static String settingsScreen = '/settings';
  static String myPageScreen = '/mypage';
  static String initial = '/init';
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
      page: () => const RootScaffold(),
  ),
  GetPage(
    name: Routes.settingsScreen,
    page: () => const SettingsPage(),
  ),
  GetPage(
    name: Routes.myPageScreen,
    page: () => const MyPage(),
  ),
  GetPage(
    name: Routes.initial,
    page: () => const InitialProgress(),
  ),
  GetPage(
    name: Routes.additionalInfoScreen,
    page: () => const SignUpAdditional(),
  )
];