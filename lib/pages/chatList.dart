import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:petke/layout/petkeAppBar.dart';
import 'package:petke/layout/petkeNavBar.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: PetkeAppBar(title: localizations.app_title,),
      body: const Center(
        child: Text('ChatListPage'),
      ),
      bottomNavigationBar: const PetkeNavBar(),
    );
  }
}