import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:petke/layout/petkeAppBar.dart';
import 'package:petke/layout/petkeNavBar.dart';

class NewPostingPage extends StatelessWidget {
  const NewPostingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: PetkeAppBar(title: localizations.app_title,),
      body: const Center(
        child: Text('PostingPage'),
      ),
      bottomNavigationBar: const PetkeNavBar(),
    );
  }
}