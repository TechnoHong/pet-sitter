import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:petke/layout/petkeAppBar.dart';
import 'package:petke/repositories/auth_repository.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final User? user = AuthRepository.instance.firebaseUser.value;

    return Scaffold(
      appBar: PetkeAppBar(title: localizations.my_page_title, hasBack: true),
      body: Center(
        child: (() {
          if (user == null) {
            return const Text("User information is missing");
          } else {
            return Column(
              children: [
                UserInfoItem(name: 'uid', content: AuthRepository.instance.firebaseUser.value?.uid ?? 'null'),
                UserInfoItem(name: 'isEmailVerified', content: user.emailVerified.toString()),
                UserInfoItem(name: 'isAnonymousAccount', content: user.isAnonymous.toString()),
                UserInfoItem(name: 'Email', content: user.email ?? '-'),
                UserInfoItem(name: 'PhoneNum', content: user.phoneNumber ?? '-'),
                UserInfoItem(name: 'DisplayName', content: user.displayName ?? '-'),
              ],
            );
          }
        })()
      ),
    );
  }
}

class UserInfoItem extends StatelessWidget {
  const UserInfoItem({super.key, required this.name, required this.content});

  final String name;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name, style: const TextStyle(fontSize: 12.0)),
        Text(content),
        const SizedBox(height: 20.0),
      ],
    );
  }
}