import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:petke/layout/petkeAppBar.dart';

class SignUpAdditional extends StatelessWidget {
  const SignUpAdditional({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: PetkeAppBar(
        title: '추가 정보',
        hasBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text('something1'),
                const SizedBox(height: 24.0,),
                Text('something2'),
                const SizedBox(height: 24.0,),
                Text('something3'),
                const SizedBox(height: 24.0,),
                Text('something4'),
                const SizedBox(height: 24.0,),
                Text('something5'),
                const SizedBox(height: 24.0,),
              ],
            ),
          ),
        ),
      )
    );
  }
}